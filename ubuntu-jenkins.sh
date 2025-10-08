#!/bin/bash
set -e 

#STEP-1: DOWNLOAD JAVA17 AND JENKINS
sudo apt-get update -y 
sudo apt-get install fontconfig openjdk-21-jre
java -version
# update-alternatives --config java

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > Debian) 
sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#STEP-3: DOWNLOAD JENKINS
sudo apt-get update
sudo apt-get install jenkins

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins
systemctl status jenkins
