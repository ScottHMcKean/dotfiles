#!/bin/bash

echo "Installing RogAuraCore"
VERSION=1.4

# dependencies
sudo apt update
sudo apt-get install -y \
    libusb-1.0-0-dev \
    make \
    curl \
    gcc

# download
curl -LOs https://github.com/wroberts/rogauracore/releases/download/$VERSION/rogauracore-$VERSION.tar.gz
tar xf rogauracore-$VERSION.tar.gz

# install
cd rogauracore-$VERSION/
./configure
make
sudo make install

