#!/bin/bash
set -e 

sudo -i
yum update -y
yum install httpd git -y
systemctl start httpd
systemctl status httpd
git clone https://github.com/Ironhack-Archive/online-clone-amazon.git
mv online-clone-amazon/* /var/www/html/
tail -f /var/log/httpd/access_log
