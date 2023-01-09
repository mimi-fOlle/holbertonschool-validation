#!/bin/bash

# Update and install 'Hugo' and 'Make'
sudo apt-get update && apt-get install -y hugo make

# Install 'curl'
apt-get install curl -y

# Download lastest release of 'Hugo'
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb

# Install the latest version of 'Hugo'
sudo apt install ./last.deb

sudo npm install -g markdown-cli

sudo rm last.deb

# Build the website
make build
