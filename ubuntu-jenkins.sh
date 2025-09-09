#!/bin/bash
set -e 

#STEP-1: INSTALLING GIT JAVA MAVEN 
sudo apt update 
apt-get install git maven -y

#STEP-2: GETTING THE REPO (jenkins.io --> download -- > Debian) 
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

#STEP-3: DOWNLOAD JAVA17 AND JENKINS
sudo apt-get update
sudo apt-get install fontconfig openjdk-17-jre
sudo apt-get install jenkins
update-alternatives --config java

#STEP-4: RESTARTING JENKINS (when we download service it will on stopped state)
systemctl start jenkins.service
systemctl status jenkins.service
systemctl enable jenkins.service
