#!/usr/bin/env bash

# check perms
if [[ $EUID != 0 ]];
then
  echo "This script requires root privileges"
  sleep 2
  exit
fi

# write nginx conf
cat >/etc/nginx/sites-available/app <<EOF
server {
    location / {
        proxy_pass "http://127.0.0.1:3000"
    }
    location /api {
        rewrite ^/api(.*) $1 break;
        proxy_pass "http://127.0.0.1:8080"
    }
}
...
EOF

# soft link conf to sites enabled
ln -s /etc/nginx/sites-available/app /etc/nginx/sites-enabled/app

echo "Finished bootstrapping config..."
