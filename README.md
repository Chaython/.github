# Support Chaython's projects

**Professional portfolio:** [Read my GitHub profile README and project portfolio](PROFILE_README.md) — software projects, contributions, engineering experience, coverage, and LinkedIn certificates.

Thank you for supporting development and maintenance of my GitHub projects.

## Sponsor or donate

- [GitHub Sponsors](https://github.com/sponsors/Chaython)
- [Patreon](https://patreon.com/Chaython)
- [Buy Me a Coffee](https://buymeacoffee.com/chaython)
- [PayPal](https://paypal.me/ChaythonM)

## Cryptocurrency donations

| Asset | Network | Receiving address |
| --- | --- | --- |
| Ethereum (ETH) | Ethereum | `0x201B6E0B0282BBAE1592C24f9CbD39009A70F7d7` |
| Bitcoin (BTC) | Bitcoin | `32o7JmXgFcs4R1SbcLLVKQCRw9KHkhneJi` |
| Solana (SOL) | Solana | `BDicyUL9zizDeYBLw8oBwotv6jtHotLLQD7Bcqg2atLk` |
| USDC | **Base** | `0xBeD35dcAd9F1A32459B3C0DF004371EBE939E760` |

**For USDC, use the Base network only.** Sending on another network may result in lost funds. Always verify the receiving address and network before transferring.

This repository contains the [default funding configuration](.github/FUNDING.yml) for my GitHub repositories. Repositories with their own `FUNDING.yml` can override it.

## Maintainer: activate Sponsor buttons across repositories

GitHub requires **Sponsorships** to be enabled in each repository's Settings → General → Features, in addition to a valid `FUNDING.yml`. Use [the PowerShell bulk activator](scripts/Enable-Sponsorships.ps1) with a GitHub CLI login that has admin rights:

```powershell
Invoke-WebRequest 'https://raw.githubusercontent.com/Chaython/.github/main/scripts/Enable-Sponsorships.ps1' -OutFile '.\Enable-Sponsorships.ps1'
& '.\Enable-Sponsorships.ps1' -DryRun
& '.\Enable-Sponsorships.ps1'
```

The script enables the repository-level Sponsor button on all accessible, public, non-archived projects, reports failures, and can be rerun for future repositories. Repositories restricted by GitHub cannot be changed.
