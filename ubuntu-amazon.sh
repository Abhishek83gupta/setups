#! /bin/bash
set -e

sudo apt-get update -y
apt-get install apache2 git -y
systemctl start apache2
systemctl status apache2
cd /var/www/html
git clone https://github.com/Ironhack-Archive/online-clone-amazon.git
mv online-clone-amazon/* .
tail -f /var/log/apache2/access.log
