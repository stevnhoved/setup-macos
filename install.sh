#!/usr/bin/env bash
set -euo pipefail

# Print a heading for each installation section.
section() {
  printf '\n==> %s\n' "$1"
}

# Add Homebrew's standard installation path to the current shell.
setup_homebrew_path() {
  if [[ -x /opt/homebrew/bin/brew ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [[ -x /usr/local/bin/brew ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
}

# Verify macOS system.
if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This installer requires macOS."
  exit 1
fi

# Install the Xcode Command Line Tools.
if ! xcode-select -p >/dev/null 2>&1; then
  section "Installing Command Line Tools for Xcode"
  xcode-select --install || true
  echo "Install Command Line Tools, then run this script again."
  exit 1
fi

setup_homebrew_path

# Install Homebrew.
if ! command -v brew >/dev/null 2>&1; then
  section "Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  setup_homebrew_path
fi

# Verify Homebrew path environment.
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew is installed, but brew is not available in PATH."
  echo "Close Terminal, open it again, and run this script again."
  exit 1
fi

section "Updating Homebrew"
brew update

failed_installs=()
trap 'failed_installs+=("$BASH_COMMAND")' ERR
set +e

section "System utilities"
brew install mas
brew install --cask raycast
brew install --cask rectangle
brew install --cask scroll-reverser
brew install --cask macshot
brew install --cask appcleaner
brew install --cask updatest
brew install fonttools

section "Drivers and hardware"
brew install --cask logi-options+
brew install --cask jabra-direct

section "Microsoft foundation"
brew install --cask microsoft-office
brew install --cask microsoft-edge
brew install --cask microsoft-teams
brew install --cask windows-app

section "CLI and development tools"
brew install git
brew install gh
brew install wget
brew install tree
brew install php
brew install powershell
brew install --cask visual-studio-code
brew install --cask github
brew install --cask coteditor
brew install --cask local

section "Productivity and AI"
brew install --cask microsoft-365-copilot
brew install --cask chatgpt
brew install --cask codex

section "Files, archives, and transfer"
brew install --cask marta
brew install --cask maczip
brew install --cask cyberduck

section "Media and graphics"
brew install --cask iina
brew install --cask affinity
brew install --cask pinta

section "Retro games"
brew install --cask es-de
brew install --cask retroarch-metal

set -e
trap - ERR

# List errors.
if (( ${#failed_installs[@]} > 0 )); then
  section "Install failures"
  printf '  %s\n' "${failed_installs[@]}"
  printf '\nCompleted installs were kept. Resolve the errors above, then run this script again.\n'
  exit 1
fi

section "Cleanup"
brew cleanup

section "Done"
printf 'macOS setup is installed. Open apps once to finish login, permissions, and licensing.\n'
