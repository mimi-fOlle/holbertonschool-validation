#!/bin/bash
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Update and install 'Hugo' and 'Make'
sudo apt-get update && apt-get install -y hugo make

# Download lastest release of 'Hugo'
sudo curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb

# Install the latest version of 'Hugo'
sudo apt install ./last.deb

sudo rm last.deb

# Build the website
make build

