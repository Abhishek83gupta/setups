# Install java 
sudo hostnamectl set-hostname maven-setup
yum update -y
yum install java-17-amazon-corretto-devel -y
java --version

# Maven Installation
wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -xvzf apache-maven-3.9.9-bin.tar.gz 
rm -rf apache-maven-3.9.9-bin.tar.gz

vi .bash_profile # add below path 
export M2_HOME=/root/apache-maven-3.9.9
export PATH=$PATH:$M2_HOME/bin    

source ~/.bash_profile  # to apply the changes without restarting
mvn --version

#OR

# Set hostname (optional)
hostnamectl set-hostname maven-setup

# Update system and install Java 17
yum update -y
yum install -y java-17-amazon-corretto

# Download and extract Maven
wget https://archive.apache.org/dist/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -xzf apache-maven-3.9.9-bin.tar.gz
rm -f apache-maven-3.9.9-bin.tar.gz

# Rename and move Maven directory to /opt
mv apache-maven-3.9.9 /opt/maven

# Set environment variables
cat <<EOF > /etc/profile.d/maven.sh
export M2_HOME=/opt/maven
export PATH=\$PATH:\$M2_HOME/bin
EOF

# Make script executable and apply immediately
chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh  # run manually on CLI

# Verify installation
mvn --version
