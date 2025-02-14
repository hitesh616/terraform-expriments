#!/bin/bash

sudo apt-get update
sudo apt-get install -y nginx
echo "Deployed via Terraform" | sudo tee /var/www/html/index.html
sudo systemctl start nginx