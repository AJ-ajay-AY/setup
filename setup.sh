#!/bin/bash

# --- Main Setup Script ---
export DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LOG_FILE="$HOME/Desktop/macos_setup_$(date +%Y-%m-%d_%H-%M-%S).log"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "🚀 Starting macOS setup process..."
echo "A detailed log will be saved to: $LOG_FILE"
echo "----------------------------------------------------------------"

# Run each module script in order
source "$DOTFILES_DIR/macbook_setup/modules/1_homebrew.sh"
source "$DOTFILES_DIR/macbook_setup/modules/2_applications.sh"
source "$DOTFILES_DIR/macbook_setup/modules/3_languages.sh"
source "$DOTFILES_DIR/macbook_setup/modules/4_ssh.sh"
source "$DOTFILES_DIR/macbook_setup/modules/5_zsh_config.sh" # New module for Zsh
source "$DOTFILES_DIR/macbook_setup/modules/6_dotfiles.sh"   # Links the configured zshrc

echo "----------------------------------------------------------------"
echo "✅ All setup modules have been executed."
echo "Please restart your terminal for all changes to take effect."