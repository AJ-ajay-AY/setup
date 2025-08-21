#!/bin/bash

echo "🔑 Starting Module 4: SSH Key Setup..."

# Prompt for the user's email address
read -p "Enter the email address for your Bitbucket SSH key: " USER_EMAIL
KEY_NAME="bb-aip-ssh"

# Ensure the .ssh directory exists
mkdir -p ~/.ssh && chmod 700 ~/.ssh

# Generate the key
echo "Generating a new ED25519 SSH key. Please follow the prompts."
ssh-keygen -t ed25519 -C "$USER_EMAIL" -f ~/.ssh/$KEY_NAME

# Configure SSH to use the new key
echo "Configuring SSH for bitbucket.org..."
CONFIG_BLOCK="Host bitbucket.org
  AddKeysToAgent yes
  IdentityFile ~/.ssh/$KEY_NAME"
echo "$CONFIG_BLOCK" >> ~/.ssh/config

# Add the key to the macOS keychain
echo "Adding the key to the macOS keychain. You'll be prompted for your passphrase."
ssh-add --apple-use-keychain ~/.ssh/$KEY_NAME

echo "----------------------------------------------------------------"
echo "ACTION REQUIRED: Copy the public key below and add it to your Bitbucket account:"
echo "---"
cat ~/.ssh/${KEY_NAME}.pub
echo "---"
echo "✅ Module 4 complete."