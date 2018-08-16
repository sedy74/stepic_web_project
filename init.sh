#!/bin/bash

git config --global user.email "karpelyanskiy@gmail.com"
git config --global user.name "sedy74"

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
cd /home/box/web
sudo gunicorn -b 0.0.0.0:8080 hello:application&
cd /home/box/web/ask
sudo gunicorn -b 0.0.0.0:8000 ask.wsgi:application&
