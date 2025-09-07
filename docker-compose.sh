#!/bin/bash
set -e    

# Install compatibility library required by Docker Compose v1.x on modern Linux (libcrypt.so.1)
sudo dnf install -y libxcrypt-compat

# Download Docker Compose v1.29.1 binary to /usr/local/bin
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# List files in /usr/local/bin to verify download
ls /usr/local/bin/

# Create a symbolic link to make docker-compose accessible from /usr/bin
sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

# Make the Docker Compose binary executable
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Compose version
docker-compose --version
