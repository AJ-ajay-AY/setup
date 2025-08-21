#!/bin/bash

echo "🍺 Starting Module 1: Homebrew & Core Tools..."

# --- Install Homebrew ---
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to your PATH on Apple Silicon Macs
    if [[ "$(uname -m)" == "arm64" ]]; then
        (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "Homebrew is already installed. Updating..."
    brew update
fi

# --- Install Core CLI Tools ---
echo "Installing core CLI tools..."
brew install curl wget watch git zsh zsh-completions tmux uv ripgrep colima docker

echo "✅ Module 1 complete."