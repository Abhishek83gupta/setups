#!/bin/bash

# 1. Update system packages
sudo yum update -y

# 2. Install curl if not already installed
sudo yum install -y curl

# 3. Install NVM (Node Version Manager)
export NVM_VERSION="v0.39.7"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash

# 4. Load NVM immediately for current session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# 5. Verify NVM installation
nvm -v

# 6. Install Node.js v16.20.2 (compatible with Amazon Linux 2)
nvm install 16.20.2

# 7. Source .bashrc to ensure nvm is loaded in future shells
source ~/.bashrc

# 8. Verify Node.js and npm installation
echo "Node version: $(node -v)"
echo "npm version: $(npm -v)"
