#!/usr/bin/env bash

# check perms
if [[ $EUID != 0 ]];
then
  echo "This script requires root privileges"
  sleep 2
  exit
fi

# check for nginx
if [ -d /etc/nginx ] && [ -x /etc/nginx ]
then
  echo "You must first install nginx. run:"
  echo "sudo apt-get update && sudo apt-get install Nginx"
  sleep 2
  exit
fi

# write nginx conf
cat >/etc/nginx/sites-available/app <<EOF
server {

    listen 80;

    # proxy to react app
    location / {
        proxy_pass http://127.0.0.1:3000;
    }

    # proxy to express api
    location /api {
        rewrite ^/api/?(.*) /$1 break;
        proxy_pass http://127.0.0.1:8080;
    }
}
EOF

# soft link conf to sites enabled
ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app

echo "Finished bootstrapping config..."
