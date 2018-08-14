#!/bin/bash

git config --global user.email "karpelyanskiy@gmail.com"
git config --global user.name "sedy74"

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo gunicorn -b 0.0.0.0:8080 /home/box/web/hello:application
