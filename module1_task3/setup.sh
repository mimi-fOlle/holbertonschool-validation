#!/bin/bash
# Spawn a sandboxed environment with ubuntu 18.04
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Install 'Hugo' and 'Make'
apt-get update && apt-get install -y hugo make

# Build the website
make build

# Exit
exit
