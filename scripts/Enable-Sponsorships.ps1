# Enable the GitHub Sponsorships repository feature across publicly visible
# repositories owned by Chaython. Funding destinations stay in FUNDING.yml.
#
# Requires the authenticated GitHub CLI (gh) with repository admin access.
# PowerShell usage: & .\Enable-Sponsorships.ps1
# Preview only:     & .\Enable-Sponsorships.ps1 -DryRun
#
# This script only changes the Sponsor-button feature flag. It does not
# force-push or change source code, existing funding links or settings.

[CmdletBinding()]
param(
    [string]$Owner = 'Chaython',
    [switch]$DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw 'GitHub CLI (gh) not found. Install GitHub.cli and reopen PowerShell.'
}

& gh auth status --hostname github.com 1>$null 2>$null
if ($LASTEXITCODE -ne 0) { throw 'GitHub CLI not authenticated; run gh auth login.' }

$reposJson = & gh repo list $Owner --limit 1000 --visibility public --json name,isArchived,isPrivate 2>&1
if ($LASTEXITCODE -ne 0) {
    throw ('Failed to list repositories: ' + ($reposJson -join [Environment]::NewLine))
}
# Windows PowerShell 5.1 may return a whole JSON array as one pipeline
# object. Explicitly iterate the parsed array instead of wrapping its output
# with @(...), which previously treated all repositories as one item.
$decoded = ConvertFrom-Json -InputObject ($reposJson -join [Environment]::NewLine)
$repos = New-Object 'System.Collections.Generic.List[object]'
foreach ($item in $decoded) {
    if ($null -eq $item) { throw 'Repository API returned a null item.' }
    if (($item.name -isnot [string]) -or ($item.name -notmatch '^[A-Za-z0-9._-]+$')) {
        throw ('Invalid repository name from GitHub CLI: ' + [string]$item.name)
    }
    if (($item.isArchived -isnot [bool]) -or ($item.isPrivate -isnot [bool])) {
        throw ('Unexpected repository metadata type for ' + [string]$item.name)
    }
    [void]$repos.Add($item)
}
if ($repos.Count -eq 0) { throw "No public repositories accessible for $Owner." }

$query = @'
query($owner: String!, $name: String!) {
  repository(owner: $owner, name: $name) {
    id
    name
    isArchived
    isDisabled
    isPrivate
    hasSponsorshipsEnabled
  }
}
'@

$mutation = @'
mutation($id: ID!) {
  updateRepository(input: { repositoryId: $id, hasSponsorshipsEnabled: true }) {
    repository {
      name
      hasSponsorshipsEnabled
    }
  }
}
'@

function Invoke-GraphQL {
    param(
        [Parameter(Mandatory)] [string]$Document,
        [Parameter(Mandatory)] [hashtable]$Variables
    )

    $cliArgs = @('api', 'graphql', '-f', ('query=' + $Document))
    foreach ($key in ($Variables.Keys | Sort-Object)) {
        $cliArgs += @('-F', ('{0}={1}' -f $key, $Variables[$key]))
    }

    $response = & gh @cliArgs 2>&1
    if ($LASTEXITCODE -ne 0) {
        throw ('GitHub GraphQL error: ' + ($response -join [Environment]::NewLine))
    }

    $parsed = ($response -join [Environment]::NewLine) | ConvertFrom-Json
    if ($parsed.PSObject.Properties.Name -contains 'errors') {
        $messages = @($parsed.errors | ForEach-Object { $_.message })
        if ($messages.Count -gt 0) { throw ($messages -join '; ') }
    }
    return $parsed.data
}

$enabled = 0
$already = 0
$skipped = 0
$failed = 0
$planned = 0

Write-Host ("Checking {0} public repositories owned by {1}..." -f $repos.Count, $Owner) -ForegroundColor Cyan

foreach ($entry in $repos) {
    $name = [string]$entry.name
    if ($entry.isArchived -or $entry.isPrivate) {
        Write-Host ("[SKIP] {0} (archived or private)" -f $name)
        $skipped++
        continue
    }

    try {
        $data = Invoke-GraphQL -Document $query -Variables @{ owner = $Owner; name = $name }
        $repository = $data.repository
        if ($null -eq $repository) { throw 'Repository not accessible through GraphQL' }

        if ($repository.isArchived -or $repository.isDisabled -or $repository.isPrivate) {
            Write-Host ("[SKIP] {0} (archived, disabled or private)" -f $name)
            $skipped++
            continue
        }

        if ($repository.hasSponsorshipsEnabled) {
            Write-Host ("[OK]   {0} (Sponsor button already enabled)" -f $name) -ForegroundColor Green
            $already++
            continue
        }

        if ($DryRun) {
            Write-Host ("[PLAN] {0} (would enable)" -f $name) -ForegroundColor Yellow
            $planned++
            continue
        }

        $updated = Invoke-GraphQL -Document $mutation -Variables @{ id = [string]$repository.id }
        if (-not $updated.updateRepository.repository.hasSponsorshipsEnabled) {
            throw 'GitHub did not confirm that Sponsorships was enabled'
        }
        Write-Host ("[ON]   {0} (Sponsorships enabled)" -f $name) -ForegroundColor Green
        $enabled++
    }
    catch {
        $failed++
        Write-Warning ("[FAIL] {0}: {1}" -f $name, $_.Exception.Message)
    }
}

Write-Host ''
Write-Host ("Summary: enabled={0}, already enabled={1}, dry-run planned={2}, skipped={3}, errors={4}" -f $enabled, $already, $planned, $skipped, $failed)
Write-Host ("Funding links are inherited from https://github.com/{0}/.github unless overridden." -f $Owner)
if ($failed -gt 0) { Write-Warning 'Review repository access or API errors for unsuccessful updates.' }
