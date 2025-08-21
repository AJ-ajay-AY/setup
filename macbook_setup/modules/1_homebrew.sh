#!/bin/bash

echo "🍺 Starting Module 1: Homebrew & Core Tools..."

# --- Install Homebrew ---
if ! command -v brew &> /dev/null; then
    # ... (Homebrew installation logic remains the same) ...
else
    echo "Homebrew is already installed. Updating..."
    brew update
fi

# --- Install Core CLI Tools ---
echo "Installing core CLI tools..."
brew install curl wget watch git zsh zsh-completions tmux uv ripgrep colima docker

echo "✅ Module 1 complete."