# My Recommended macOS Setup

Recommended macOS app setup for rebuilding my MacBook after a reinstall or replacement. It is designed to be repeatable, easy to audit, and useful as a reference for anyone moving into the Mac ecosystem.

This guide aims to:

- keep an installable list of recommended apps and tools
- document why each app is useful
- track the current macOS release supported by the reference Mac

## Reference Mac

| Area | Setup |
| --- | --- |
| Model | MacBook Pro 16" |
| Model identifier | MacBookPro18,1 |
| Chip | Apple M1 Pro |
| CPU | 10 cores: 8 performance, 2 efficiency |
| GPU | 16 cores |
| Memory | 16 GB |
| Architecture | Apple Silicon / arm64 |

This is the project's target hardware. The installer may work on other Macs, but they are not tested or supported. Software support follows the latest generally available macOS release supported by this Mac rather than a fixed macOS version.

## Installation

Run the script from the repository root:

```sh
./install.sh
```

The script installs Homebrew if it is missing, updates Homebrew, and then installs the declared apps and command-line tools. macOS settings, app configuration, accounts, and device management are outside the scope of this project.

If an item fails, successful installations are kept. The script reports the failure and exits with an error; resolve the reported problem and run `./install.sh` again to retry the missing items.

## Software

Cost notes are rough categories, not a guarantee of the current price. Always check the vendor site, especially for subscriptions, Pro plans, and one-time purchases.

The installation field shows the Homebrew command used in `install.sh`, which is the source of truth for the package list.

### 1. System Utilities

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [MAS CLI](https://github.com/mas-cli/mas) | Command-line interface for the Mac App Store. | `brew install mas` | Free, open source |
| [Raycast](https://raycast.com/) | Launcher, commands, snippets, and automation. | `brew install --cask raycast` | Free plan, paid Pro plan available |
| [Rectangle](https://rectangleapp.com/) | Window management with keyboard shortcuts and snap areas. | `brew install --cask rectangle` | Free, open source |
| [Scroll Reverser](https://pilotmoon.com/scrollreverser/) | Separate scroll direction for mouse and trackpad. | `brew install --cask scroll-reverser` | Free |
| [macshot](https://github.com/sw33tLie/macshot) | Screenshot and screen recording tool. | `brew install --cask macshot` | Free, open source |
| [AppCleaner](https://freemacsoft.net/appcleaner/) | Uninstalls apps and related support files. | `brew install --cask appcleaner` | Free |
| [Updatest](https://updatest.app/) | Overview of app updates and update sources. | `brew install --cask updatest` | One-time individual or family license |
| [fonttools](https://github.com/fonttools/fonttools) | Tools for inspecting and manipulating font files. | `brew install fonttools` | Free, open source |

### 2. Drivers and Hardware

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [Logitech Options+](https://www.logitech.com/en-us/software/logi-options-plus.html) | Configuration for Logitech mice and keyboards. | `brew install --cask logi-options+` | Free |
| [Jabra Direct](https://www.jabra.com/software-and-services/jabra-direct) | Configuration, firmware updates, and personalization for Jabra headsets. | `brew install --cask jabra-direct` | Free |

### 3. Microsoft Foundation

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [Microsoft 365 Family](https://www.microsoft.com/en-us/microsoft-365/buy/compare-all-microsoft-365-products) | Office suite including Word, Excel, PowerPoint, Outlook, OneNote, and OneDrive. | `brew install --cask microsoft-office` | Requires Microsoft 365 Family login/license |
| [Microsoft Edge](https://www.microsoft.com/en-us/edge) | Secondary browser and Microsoft 365 compatibility. | `brew install --cask microsoft-edge` | Free |
| [Microsoft Teams](https://www.microsoft.com/en/microsoft-teams/group-chat-software/) | Chat, meetings, calls, and collaboration. | `brew install --cask microsoft-teams` | Free/work account, depends on organization |
| [Windows App](https://aka.ms/WindowsApp) | Remote access to Windows, Azure Virtual Desktop, and similar services. | `brew install --cask windows-app` | Free app, usually requires a Microsoft/work account |

### 4. CLI and Development

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [Git](https://git-scm.com) | Version control and the foundation for GitHub workflows. | `brew install git` | Free, open source |
| [GitHub CLI](https://cli.github.com/) | GitHub from the terminal: login, issues, PRs, and repository commands. | `brew install gh` | Free |
| [wget](https://www.gnu.org/software/wget/) | Downloads files from the terminal. | `brew install wget` | Free, open source |
| [tree](https://oldmanprogrammer.net/source.php?dir=projects/tree) | Displays folder structures as trees in the terminal. | `brew install tree` | Free, open source |
| [PHP](https://www.php.net/) | Runtime for PHP projects and local web tooling. | `brew install php` | Free, open source |
| [PowerShell](https://github.com/PowerShell/PowerShell) | Microsoft's cross-platform shell and scripting environment. | `brew install powershell` | Free, open source |
| [Visual Studio Code](https://code.visualstudio.com/) | Primary code editor with terminal integration. | `brew install --cask visual-studio-code` | Free |
| [GitHub Desktop](https://desktop.github.com/) | GUI for GitHub repositories and commits. | `brew install --cask github` | Free |
| [CotEditor](https://coteditor.com/) | Lightweight text editor for quick files and notes. | `brew install --cask coteditor` | Free, open source |
| [Local](https://localwp.com/) | Local WordPress development environment by Flywheel. | `brew install --cask local` | Free |

### 5. Productivity and AI

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [Microsoft 365 Copilot](https://www.microsoft.com/en-us/microsoft-365-copilot/download-copilot-app) | Microsoft 365 hub for Copilot Chat, Microsoft 365 apps, and files. | `brew install --cask microsoft-365-copilot` | Works with Microsoft 365 Family login/license |
| [ChatGPT](https://chatgpt.com/) | OpenAI's official desktop app. | `brew install --cask chatgpt` | Free plan, paid plans available |
| [Codex](https://openai.com/codex) | OpenAI Codex CLI app for coding agents. | `brew install --cask codex` | Requires OpenAI access |

### 6. Files, Archives, and Transfer

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [Marta](https://marta.sh/) | Two-pane file manager for power-user file work. | `brew install --cask marta` | Free during beta/varies by license |
| [MacZip](https://ezip.awehunt.com/) | Archive utility for zip and other compressed files. | `brew install --cask maczip` | Free |
| [Cyberduck](https://cyberduck.io/) | FTP/SFTP/WebDAV/cloud storage browser. | `brew install --cask cyberduck` | Free, donation/license available |

### 7. Media and Graphics

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [IINA](https://iina.io/) | Modern video player for macOS. | `brew install --cask iina` | Free, open source |
| [Affinity](https://www.affinity.studio/) | Image editing and design tools from Affinity. | `brew install --cask affinity` | Free; Canva AI features require Canva Pro |
| [Pinta](https://www.pinta-project.com/) | Simple drawing and image editing app. | `brew install --cask pinta` | Free, open source |

### 8. Retro Games

| Software | Description | Installation | Cost/license |
| --- | --- | --- | --- |
| [ES-DE](https://www.es-de.org/) | Frontend for browsing and launching games from multiple platforms. | `brew install --cask es-de` | Free, open source on macOS |
| [RetroArch](https://www.retroarch.com/) | Emulator frontend optimized for Metal on macOS. | `brew install --cask retroarch-metal` | Free, open source |

## Maintaining with Updatest

Updatest is installed through Homebrew and is useful as a maintenance dashboard after the initial setup. Enable update sources and Brew adoption so it can help spot apps that should move from manual installation into Homebrew in the future.

Good routine after installing new apps:

1. Open Updatest and check the source for new apps.
2. If the app exists in Homebrew, add it to `install.sh` and the README table.

## Useful macOS Notes

- Homebrew on Apple Silicon usually lives in `/opt/homebrew`.
- GUI apps are installed with `brew install --cask ...`.
- Terminal packages are installed with `brew install ...`.
- Apps may need extra macOS permissions after installation, especially accessibility, screen recording, input monitoring, and login items.
- `brew leaves` shows the directly installed formula packages and is useful for avoiding documentation of every underlying dependency.
- Updatest can be used as an ongoing sanity check for which apps are managed by Homebrew.
