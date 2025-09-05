#!/bin/bash
set -e    

# Update system package
sudo apt update -y

# Install dependencies
sudo apt install ca-certificates curl gnupg lsb-release -y

# Add Docker’s Official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Add Docker’s official repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update again
sudo apt update -y

# Install Docker Engine 
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Start Docker service
sudo systemctl start docker

# Enable Docker on boot
sudo systemctl enable docker

# Verify installation
docker --version

# running hello-world container (since we don't have image so it will pull from dockerhub)
docker run hello-world
# To see all containers
docker ps -a                      # container will run & stop immediately bcz nothing to do




#OR 




#!/bin/bash
set -e                   

# Update system packages 
sudo apt update -y

# Install Docker from the default system repository
sudo apt install docker.io -y

# Start Docker service
sudo systemctl start docker 

# Enable Docker to start on boot
sudo systemctl enable docker
sudo systemctl status docker

# Verify Docker version
docker --version

# Run test container (pulls from Docker Hub if needed)
docker run hello-world

# List all containers 
docker ps -a
