#!/bin/bash

# Update system packages
sudo yum update -y

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load NVM immediately for current session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Verify NVM installation
nvm -v

# Install Node.js v16.20.2 (compatible with Amazon Linux 2)
nvm install 16.20.2

# Source .bashrc to ensure nvm is loaded in future shells
source ~/.bashrc

# Verify Node.js and npm installation
echo "Node version: $(node -v)"
echo "npm version: $(npm -v)"
