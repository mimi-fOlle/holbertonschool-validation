#!/bin/bash
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Update and install 'Hugo' and 'Make'
apt-get update && apt-get install -y hugo make

# Install 'curl'
apt-get install curl -y

# Download lastest release of 'Hugo'
curl -L https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb -o last.deb

# Install the latest version of 'Hugo'
apt-get install ./last.deb

rm last.deb

# Build the website
make build
