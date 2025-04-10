# Install java 
yum update -y
yum install java-21-amazon-corretto-devel -y

# Maven Installation
wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -xvzf apache-maven-3.9.9-bin.tar.gz 
rm -rf apache-maven-3.9.9-bin.tar.gz

vi .bash_profile # add below path 
export M2_HOME=/root/apache-maven-3.9.9
export PATH=$PATH:$M2_HOME/bin    

source ~/.bash_profile  # to apply the changes without restarting
