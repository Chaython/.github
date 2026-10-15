<div align="center">

# Chay M. · Chaython

**Software developer · Open-source maintainer · Windows automation · Browser engineering · Creative tools · Media workflows**

I build practical tools that make complicated software and system tasks more accessible — from daily-use browser extensions to Windows maintenance suites, native media applications, and experimental interoperability projects.

[GitHub](https://github.com/Chaython) · [LinkedIn](https://www.linkedin.com/in/chaython/) · [Firefox extension](https://addons.mozilla.org/en-US/firefox/addon/volume-control-boost-volume/) · [Sponsor](https://github.com/sponsors/Chaython) · [Contact](mailto:chaython@live.ca)

</div>

---

## The work, at a glance

| Focus | Selected impact and work |
| --- | --- |
| **Browser audio** | **73,000+ users** shown on Mozilla Add-ons for Volume Control in October 2026; Firefox and Chromium compatibility; per-site controls and cross-origin/DRM-aware behavior |
| **Windows desktop software** | Major GUI, workflow, update, package-management, diagnostics and performance work on Windows Maintenance Tool, an extended fork of the original project |
| **Creative and media software** | Chay's Photo Studio, Rust Encoder, and work on video/AV1-related features in FilmCraft |
| **Open-source maintenance** | Contributions, forks, packaging, fixes and experiments across **60+ GitHub repositories**, including upstream synchronization and release automation |
| **Engineering approach** | Responsive desktop UIs, background workers, defensive error handling, regression tests, release pipelines, real-world compatibility and honest feature documentation |

> I care about more than a feature checking a box: it should work for users, survive real-world edge cases, be understandable in the UI, and not regress when the next update lands.

### Recognition and usage

- **Volume Control:** Mozilla Add-ons listed **73,348 Firefox users** when checked on **October 15, 2026**. User counts fluctuate; the [live listing](https://addons.mozilla.org/en-US/firefox/addon/volume-control-boost-volume/) is the current source.
- **Windows Maintenance Tool:** Featured in [Neowin's April 2026 coverage of WMT's expanding features](https://www.neowin.net/news/this-useful-unofficial-script-for-fixing-windows-11-is-getting-many-new-features/). The project predates my fork; I focus on extending and improving the GUI and associated workflows.
- **Public development:** Active work spans user-facing software, systems administration, media processing, build automation, cross-platform packaging, debugging and research prototypes.

---

## Featured projects

### 🪟 [Windows Maintenance Tool](https://github.com/Chaython/Windows-Maintenance-Tool)
**PowerShell · WPF/XAML · Windows internals · WinGet · Background processing**

My extended fork of the Windows Maintenance Tool originally developed by [ios12checker](https://github.com/ios12checker/Windows-Maintenance-Tool). I have worked on turning complex administration tasks into an integrated Windows 10/11 desktop experience rather than requiring users to assemble disconnected scripts and utilities.

Areas of substantial work include:

- A GUI for system cleanup, updates, repairs, optional Windows features, driver and disconnected-device maintenance, firewall rules, registry tweaks, compression and diagnostics.
- A searchable **Quick Find** interface and more discoverable controls, with attention to safe navigation, status visibility, confirmations and recoverable changes.
- Software and game-library workflows involving **WinGet, Chocolatey, Scoop, npm, pip, Steam, GOG and Legendary**, plus install/update/import/locate scenarios.
- WPF responsiveness work: moving slow scans and status checks off the UI thread, addressing PowerShell runspace/pipeline lifecycle bugs and improving cancellation behavior.
- Installer, provider and logging reliability, version checks, self-updating, CI/release workflows and release provenance.

**Engineering themes:** concurrency, correctness, user safety, maintainability and practical diagnostics.  
[Explore WMT →](https://github.com/Chaython/Windows-Maintenance-Tool)

### 🔊 [Volume Control](https://github.com/Chaython/volumecontrol)
**JavaScript · WebExtensions · Web Audio API · Firefox · Chromium**

A widely used browser audio extension, maintained and substantially expanded from its earlier open-source roots.

- Per-site and per-tab volume adjustment, including attenuation and boosting above normal browser limits where media access permits.
- Mono audio, optional normalization, remembered settings, exclusion rules, URL/path matching, hotkeys and clear popup feedback.
- Work on dynamically created media, iframes, single-page applications, WebAudio graphs, audio transitions and compatibility with video players.
- Explicit handling of **DRM-restricted and cross-origin media**: features that cannot safely work are reported or disabled rather than silently claimed to work.
- Regression testing, browser packaging, privacy-aware local settings and release automation.

[Install from Firefox Add-ons →](https://addons.mozilla.org/en-US/firefox/addon/volume-control-boost-volume/) · [Source & documentation →](https://github.com/Chaython/volumecontrol)

### 🎨 [Chay's Photo Studio](https://github.com/Chaython/ChaysPhotoStudio)
**TypeScript · React/Next.js · WebGL2 · Electron · Tauri · Image processing**

My ambitious, actively developed **source-available** photo editor for browser and desktop use. It draws workflow inspiration from Photoshop, GIMP, Photopea and other creative suites, while documenting what is and is not yet supported.

- Layered documents; selections, painting, retouching and transforms; editable text/shapes; masks, adjustment layers and Smart Object workflows.
- Photoshop-style workspace layouts, docking and floating panels, themes, customizable tools and keyboard shortcuts.
- PSD/PSB and broader image-format work, RAW development, metadata and color workflows, video frame import, and ongoing PDF/document compatibility research.
- Plug-in and filter integration experiments, GIMP-related workflows, local processing, optional AI tools, recovery, build distribution and browser testing.
- Web/PWA, Electron desktop, Tauri WebView and browser-extension distribution paths.

**Status note:** This is an evolving editor, not a claim of full Photoshop/GIMP parity. Its repository license is **source-available and non-commercial**, not an OSI-approved open-source license.

[Try the editor →](https://chaython.github.io/ChaysPhotoStudio/) · [Features and limitations →](https://github.com/Chaython/ChaysPhotoStudio)

### 🎬 [Rust Encoder](https://github.com/Chaython/Rust-Encoder)
**Rust · egui/eframe · FFmpeg/FFprobe · Media metadata · Cross-platform builds**

A Rust-native desktop media conversion and processing app with an embedded player, interactive trim controls and batch orchestration. The GUI and job management are Rust; actual encoding and decoding use external FFmpeg tools.

- Background probing, queued conversion jobs, progress, cancellation, output validation and profile/preset handling.
- Video, audio, subtitles, stream copy/rewrapping, filters, frame and audio analysis.
- H.264, HEVC, AV1 and other formats through the available FFmpeg codecs, with optional hardware-encoder paths where supported.
- Portable/native release packaging and cross-platform workflows.

**Status:** An active project, not yet a one-for-one replacement for mature post-production software.  
[See Rust Encoder →](https://github.com/Chaython/Rust-Encoder)

### 🎞️ [FilmCraft](https://github.com/Chaython/filmcraft)
**Rust · Video editing · Codec work · AV1/HDR research**

Work in a fork of the [ArtCraft](https://github.com/ArtCraft) video-editing ecosystem, with an emphasis on reviewing, integrating and validating AV1-related encoding/decoding changes, hardware paths, color precision and HDR handling. This is collaborative, evolving codec work; I do not represent experimental paths as universally validated.

[Explore the fork →](https://github.com/Chaython/filmcraft)

---

## Additional projects and areas of contribution

| Project | What I've been working on |
| --- | --- |
| [Brave Portable Updater](https://github.com/Chaython/Brave-Portable-Updater) | PowerShell and Rust launchers, Stable/Beta/Nightly channel management, portable profiles, update scheduling and Windows environment isolation experiments |
| [EquicordPlus](https://github.com/Chaython/EquicordPlus) | An extended **Equicord fork** with user plugins, microphone/camera and screenshare diagnostics, upstream syncing, build workflows and release packaging |
| [AnyPS5](https://github.com/Chaython/AnyPS5) | An **upstream-based fork** exploring console executable interoperability, PRX/SELF handling, relinking and a Windows GUI |
| [SharpEmu](https://github.com/Chaython/sharpemu) | Experimental C# PS5 emulation and runtime/graphics compatibility work; early research stage |
| [Better Chrome Mic JS](https://github.com/Chaython/Better-Chrome-Mic-JS) | Chromium microphone and WebRTC capture adjustments |
| [TwitchDropsMiner](https://github.com/Chaython/TwitchDropsMiner) | Maintenance of a fork: campaign detection, GUI responsiveness, packaging and runtime fixes |
| [windhawk-mods](https://github.com/Chaython/windhawk-mods) | Windows shell/UI customization and modding |
| [taskbar-music-lounge](https://github.com/Chaython/taskbar-music-lounge) | Desktop/taskbar media experience experiments |
| [TogglePIP](https://github.com/Chaython/TogglePIP) | Browser video picture-in-picture controls |
| [ShaderBridge](https://github.com/Chaython/ShaderBridge) and [ReShade shaders](https://github.com/Chaython/reshade-shaders) | Graphics and shader-related tools and experiments |
| [SteamAchievementManager](https://github.com/Chaython/SteamAchievementManager) and [LGTVCompanion](https://github.com/Chaython/LGTVCompanion) | Maintenance and customization of existing community software |
| [Useful Windows scripts](https://github.com/Chaython/useful-scripts-to-fix-windows) | Smaller automation, cleanup and troubleshooting tools |

**A note on attribution:** Several repositories above are forks of existing projects. I distinguish original products, maintained forks, enhancements and experiments, and credit the upstream developers in their project repositories. Project licenses and feature-completeness vary.

---

## What I work with

| Area | Technologies and interests |
| --- | --- |
| **Languages** | PowerShell, JavaScript, TypeScript, Rust, Python, C#, batch/shell scripting, HTML and CSS |
| **Desktop UIs** | WPF/XAML, egui/eframe, Electron, Tauri, Windows-native utilities |
| **Web and extensions** | React, Next.js, Firefox/Chromium WebExtensions, Web Audio, WebRTC, service workers, browser APIs |
| **Media** | FFmpeg/FFprobe, video/audio pipelines, hardware encoding, AV1, image formats, PSD/PSB, GPU-based image operations |
| **Systems** | Windows administration, registry and services, driver management, package managers, processes, concurrency and cancellation |
| **Shipping and quality** | Git, GitHub Actions, CI/CD, native builds, release artifacts, regression testing, logging and bug triage |

### How I approach software

1. **Make difficult tasks approachable.** Replace confusing command sequences with discoverable, inspectable interfaces.
2. **Keep the interface responsive.** Run long operations in the background, make cancellation honest, and control resource lifetimes.
3. **Test real integrations.** A successful compile does not prove a driver scan, media player, extension or installer works in practice.
4. **Design for failure.** Report unsupported features, preserve safe defaults, and avoid misleading success messages.
5. **Respect upstream work.** Improve and integrate existing software where appropriate, with clear source attribution and licensing.

---

## Certifications and continuing education

These certificates are listed on my [public LinkedIn profile](https://www.linkedin.com/in/chaython/). Issuers and award dates below are taken from that listing; they are not claims of a university degree or of separate professional licensure.

| Credential | Issuer | Listed issue date |
| --- | --- | --- |
| **Operating Systems and You: Becoming a Power User** | Google | Nov 2025 |
| **Technical Support Fundamentals** | Google | Nov 2025 |
| **The Bits and Bytes of Computer Networking** | Google | Nov 2025 |
| **Generative AI Overview for Project Managers** | Project Management Institute (PMI) | Apr 2025 |
| **Quantitative Techniques** | Columbia+ | Apr 2025 |
| **McGill Personal Finance Essential** | McGill University — Desautels Faculty of Management | May 2023 |
| **Continuing Medical Education — ACLS certificate** | The Postgraduate Institute for Medicine | Apr 2025 (listed expiry: Apr 2027) |

**Additional studies:** My LinkedIn education section lists **Columbia University (2025)** with learning focused on statistical inference, probability, hypothesis testing, confidence intervals and data analysis. I make no degree claim here.

**Professional background:** LinkedIn also lists experience associated with **Branching Media UG**. Visit my [LinkedIn profile](https://www.linkedin.com/in/chaython/) for the latest work-history details and credential records.

---

## Highlights, writing and links

- 📰 **In the news:** [Neowin on Windows Maintenance Tool and its expanding Windows 11 features (April 2026)](https://www.neowin.net/news/this-useful-unofficial-script-for-fixing-windows-11-is-getting-many-new-features/)
- 🦊 **Live product:** [Volume Control on Mozilla Add-ons](https://addons.mozilla.org/en-US/firefox/addon/volume-control-boost-volume/)
- 🖼️ **Live application:** [Chay's Photo Studio](https://chaython.github.io/ChaysPhotoStudio/)
- 📦 **Browse all repositories:** [github.com/Chaython?tab=repositories](https://github.com/Chaython?tab=repositories)
- 💼 **Certificates and professional updates:** [LinkedIn](https://www.linkedin.com/in/chaython/)

## Collaboration and support

I'm interested in practical bug reports, reproducible performance problems, thoughtful feature proposals, interoperability work and well-tested contributions. The relevant repository's **Issues**, **Pull Requests**, **README** and **license** are the best place to begin.

Ongoing development can be supported through [GitHub Sponsors](https://github.com/sponsors/Chaython), [Patreon](https://patreon.com/Chaython), [Buy Me a Coffee](https://buymeacoffee.com/chaython), [PayPal](https://paypal.me/ChaythonM) or [cryptocurrency donation addresses](https://github.com/Chaython/.github#cryptocurrency-donations) (USDC uses **Base**).

<p align="center">
  <sub>Building, testing, fixing and documenting software that people can actually use.</sub>
</p>
