#!/bin/bash

echo "Installing Latex Toolkit"

# dependencies
# https://linuxconfig.org/how-to-install-latex-on-ubuntu-20-04-focal-fossa-linux
sudo apt update
sudo apt-get install -y \
    texlive-latex-extra \
    texlive-science \
    texlive-extra-utils