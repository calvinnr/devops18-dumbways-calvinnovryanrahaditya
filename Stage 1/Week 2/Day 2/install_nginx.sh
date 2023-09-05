#!/usr/bin/env bash

sudo apt update
sudo apt install nginx -y
sudo ufw allow 'Nginx Full'
sudo ufw status
sudo systemctl status nginx
