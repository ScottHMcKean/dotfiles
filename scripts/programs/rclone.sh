#!/bin/bash

echo "Installing rclone and configuring google drive"
sudo apt install rclone

# setup google drive
# https://rclone.org/drive/
rclone config -n