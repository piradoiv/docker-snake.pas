#!/bin/sh
set -e

# Dependencies
apt update
DEBIAN_FRONTEND=noninteractive apt install -yq git fpc

# Build
git clone https://github.com/piradoiv/snake.pas.git /snake.pas
cd /snake.pas && make
mv /snake.pas/snake /snake

# Cleanup
rm -rf /snake.pas
apt remove fpc git -q -y
apt autoclean -q -y
apt autoremove -q -y
apt purge -q -y
apt clean -y
rm /build.sh
