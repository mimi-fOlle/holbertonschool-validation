#!/bin/bash

# Download lastest release of 'Hugo'
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb

# Install the latest version of 'Hugo'
sudo apt install ./last.deb

sudo rm last.deb

make build
