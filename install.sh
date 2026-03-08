#!/bin/bash

set -xe

mkdir -p ~/.config/
cp -r .config/* ~/.config/
cp .zshrc ~/
sudo cp etc/i3status.conf /etc/
