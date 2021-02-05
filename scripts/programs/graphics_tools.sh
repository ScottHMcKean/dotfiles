#!/bin/bash

echo "Installing Graphics Tools"

# dependencies
sudo apt update
sudo apt-get install -y \
    libcanberra-gtk-module libcanberra-gtk3-module \
    gimp \
    inkscape
    

