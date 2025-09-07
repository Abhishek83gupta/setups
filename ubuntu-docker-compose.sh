#!/bin/bash
set -e    

# Download Docker Compose v1.29.1 binary to /usr/local/bin
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# List files in /usr/local/bin to verify download
ls /usr/local/bin/

# Create a symbolic link to make docker-compose accessible from /usr/bin
sudo ln -sf /usr/local/bin/docker-compose /usr/bin/docker-compose

# Make the Docker Compose binary executable
sudo chmod +x /usr/local/bin/docker-compose

# Verify Docker Compose installation by printing its version
docker-compose --version




# OR 




#!/bin/bash
set -e 

# Install docker-compose using default package manager
sudo apt-get install docker-compose -y

# Verify that docker-compose 
docker-compose --version
