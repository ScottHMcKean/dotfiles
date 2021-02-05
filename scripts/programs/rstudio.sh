#!/bin/bash

echo "Installing R & RStudio"
# need to add a search path to get libssl
# https://askubuntu.com/questions/1261614/ubuntu-20-04-libssl-so-1-0-0-cannot-open-shared-object-file-no-such-file-or-d
echo "deb http://security.ubuntu.com/ubuntu xenial-security main" | sudo tee -a /etc/apt/sources.list

# dependencies
sudo apt update
sudo apt-get install -y \
    r-base \
    gdebi-core \
    libssl1.0.0

# download
wget https://download1.rstudio.org/desktop/xenial/amd64/rstudio-1.4.1103-amd64.deb
sudo gdebi rstudio-1.4.1103-amd64.deb -y