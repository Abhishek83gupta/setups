#!/bin/bash

# Set hostname (optional)
hostnamectl set-hostname maven-setup

# Update system and install Java 17 (OpenJDK)
apt-get update -y
apt-get install -y openjdk-17-jdk wget tar

# Download and extract Maven
wget https://archive.apache.org/dist/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -xzf apache-maven-3.9.9-bin.tar.gz
rm -f apache-maven-3.9.9-bin.tar.gz

# Rename and move Maven directory to /opt
mv apache-maven-3.9.9 /opt/maven

# Set environment variables
cat <<EOF | tee /etc/profile.d/maven.sh > /dev/null
export M2_HOME=/opt/maven
export PATH=\$PATH:\$M2_HOME/bin
EOF

# Make script executable and apply immediately
chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh   #run manually

# Verify installation
mvn --version
