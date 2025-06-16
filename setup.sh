#!/bin/bash
apt update -y
apt install nginx -y

wget https://raw.githubusercontent.com/YOUR_GITHUB_USERNAME/YOUR_REPO_NAME/main/index.html -O /var/www/html/index.html

systemctl enable nginx
systemctl restart nginx
