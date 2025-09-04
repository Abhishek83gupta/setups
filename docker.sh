#!/bin/bash
set -e                   #Exit the script immediately if any command fails (returns a non-zero exit code).

# Update system packages 
sudo yum update -y

# Install Docker from the default system repository
# Note: This may not install the latest Docker version
sudo yum install docker -y

# Start Docker service
sudo systemctl start docker 

# Enable Docker to start on boot
sudo systemctl enable docker

# Verify Docker version
docker --version

# Run test container (pulls from Docker Hub if needed)
docker run hello-world

# List all containers 
docker ps -a
