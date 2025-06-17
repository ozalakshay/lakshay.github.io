#!/bin/bash
apt update -y
apt install nginx -y

wget https://raw.githubusercontent.com/ozalakshay/lakshay-resume/main/lakshay-resume.zip -O /tmp/lakshay-resume.zip

unzip /tmp/lakshay-resume.zip -d /tmp/resume-site
cp -r /tmp/resume-site/* /var/www/html/

systemctl enable nginx
systemctl restart nginx
