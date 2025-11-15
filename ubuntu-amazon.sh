#! /bin/bash
set -e

sudo -i
apt-get update -y
apt-get install apache2 git -y
systemctl start apache2
systemctl status apache2
git clone https://github.com/Ironhack-Archive/online-clone-amazon.git
mv online-clone-amazon/* /var/www/html/
tail -f /var/log/apache2/access.log
