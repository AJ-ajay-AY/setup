#!/bin/bash

echo "🛠️ Starting Module 3: Languages & Dev Tools..."

# Define a central profile file for environment variables
# This will be sourced by your .zshrc and .bashrc
export DEV_PROFILE="$HOME/.dev_profile"
touch $DEV_PROFILE

# --- Node.js / Javascript ---
echo "Setting up Node.js via nvm..."
mkdir -p ~/.nvm
brew install nvm
brew install yarn
nvm install node # Installs the latest version of Node.js
# Add nvm to shell config
echo 'export NVM_DIR="$HOME/.nvm"' >> $DEV_PROFILE
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm' >> $DEV_PROFILE
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> $DEV_PROFILE


# --- Go ---
echo "Setting up Go..."
brew install go
# Add Go paths to the dev profile
{
  echo ""
  echo "# Go development paths"
  echo 'export GOPATH="${HOME}/.go"'
  echo 'export GOROOT="$(brew --prefix golang)/libexec"'
  echo 'export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"'
} >> $DEV_PROFILE

# --- Terraform ---
echo "Setting up Terraform..."
brew install terraform
echo "Terraform version check:"
terraform -v

echo "✅ Module 3 complete."