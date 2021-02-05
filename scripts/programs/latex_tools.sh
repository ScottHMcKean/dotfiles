#!/bin/bash

echo "Installing Latex Toolkit"

# dependencies
sudo apt update
sudo apt-get install -y \
    texlive-latex-extra \
    texlive-science \
    texlive-extra-utils
    

