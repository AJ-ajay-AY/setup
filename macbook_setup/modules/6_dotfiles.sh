#!/bin/bash

echo "⚙️ Starting Module 6: Dotfiles & Configs..."

# --- Backup and Link Dotfiles ---
# This function creates a backup of an existing file and then copies the new one.
link_dotfile() {
    local source_file="$1"
    local destination_file="$2"

    if [ -f "$destination_file" ] || [ -L "$destination_file" ]; then
        echo "Backing up existing $destination_file to ${destination_file}.bak"
        mv "$destination_file" "${destination_file}.bak"
    fi

    echo "Placing new $destination_file..."
    cp "$source_file" "$destination_file"
}

# Link zshrc, bashrc, and the new p10k.zsh
link_dotfile "$DOTFILES_DIR/config/zshrc" "$HOME/.zshrc"
link_dotfile "$DOTFILES_DIR/config/bashrc" "$HOME/.bashrc"
link_dotfile "$DOTFILES_DIR/config/p10k.zsh" "$HOME/.p10k.zsh" # Added as requested

# --- Manage SSH Config File ---
# This appends custom configurations to ~/.ssh/config
SSH_CONFIG_ADDITIONS="$DOTFILES_DIR/config/ssh_config_additions"

echo "Updating SSH configuration..."
if [ -s "$SSH_CONFIG_ADDITIONS" ]; then
    # Ensure the .ssh directory and config file exist
    mkdir -p "$HOME/.ssh"
    touch "$HOME/.ssh/config"

    # Append the contents to the ssh config file
    echo "" >> "$HOME/.ssh/config" # Add a newline for separation
    cat "$SSH_CONFIG_ADDITIONS" >> "$HOME/.ssh/config"
    echo "✅ Custom entries added to ~/.ssh/config."
else
    echo "No new SSH config entries to add."
fi

echo "✅ Module 6 complete."