#!/bin/bash

# Download lastest release of 'Hugo'
wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb	

sudo dpkg -i hugo_extended_0.109.0_linux-amd64.deb	
# Install markdownlint and zip tools
apt-get install zip -y
npm install -g markdownlint-cli -y

