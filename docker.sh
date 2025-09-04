#!/bin/bash
set -e                   #Exit the script immediately if any command fails (returns a non-zero exit code).

# Update system packages 
sudo yum update -y

# Start Docker service
sudo yum install docker -y

# Enable Docker to start on boot
sudo systemctl enable docker

# Verify Docker version
docker --version

# Run test container (pulls from Docker Hub if needed)
docker run hello-world

# List all containers 
docker ps -a
