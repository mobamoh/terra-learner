#!/bin/bash

# Install telnet
sudo apt install -y telnet

# Install Caddy
sudo apt install -y debian-keyring debian-archive-keyring apt-transport-https
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | sudo gpg --dearmor -o /usr/share/keyrings/caddy-stable-archive-keyring.gpg
curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/caddy-stable.list
sudo apt update
sudo apt install -y caddy

# Enable Caddy service
sudo systemctl enable caddy

# Create directory for the app
sudo mkdir -p /var/www/app1

# Set permissions
sudo chmod -R 755 /var/www

# Get hostname
HOSTNAME=$(hostname)

# Create HTML content
HTML_CONTENT="<!DOCTYPE html>
<html>
<body style='background-color:rgb(250, 210, 210);'>
<h1>Welcome to MohaLabs - WebVM App1 </h1>
<p><strong>VM Hostname:</strong> $HOSTNAME</p>
<p><strong>VM IP Address:</strong> $(hostname -I)</p>
<p><strong>Application Version:</strong> V1</p>
<p>Google Cloud Platform - Demos</p>
</body>
</html>"

# Write HTML content to files
echo "$HTML_CONTENT" | sudo tee /var/www/app1/index.html
echo "$HTML_CONTENT" | sudo tee /var/www/index.html

# Create Caddyfile
sudo tee /etc/caddy/Caddyfile > /dev/null <<EOT
:80 {
    root * /var/www
    file_server
}
EOT

# Restart Caddy to apply changes
sudo systemctl restart caddy