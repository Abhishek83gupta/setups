#!/bin/bash

# Update the system package list
apt-get update -y

# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Load nvm into the current session
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Verify NVM installation
nvm -v

# Install the latest LTS version of Node.js
nvm install --lts

# Verify Node.js and npm installation
echo "Node version: $(node -v)"
echo "npm version: $(npm -v)"
