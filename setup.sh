#!/bin/bash
apt update -y
apt install nginx -y

wget https://raw.githubusercontent.com/ozalakshay/lakshay-resume/main/index.html -O /var/www/html/index.html

systemctl enable nginx
systemctl restart nginx
