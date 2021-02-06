#!/bin/bash

echo "Installing Zotero"
# https://www.zotero.org/support/installation
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash
sudo apt update
sudo apt install zotero

# requires rclone & gdrive to be setup
# copies cloud references to Zotero default
rclone copy gdrive:zotero ~/Zotero/