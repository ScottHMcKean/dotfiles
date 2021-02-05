#!/bin/bash

echo "Installing rclone and configuring google drive"
sudo apt install rclone

# setup google drive
# https://rclone.org/drive/
rclone config -n

# some useful commands
rclone lsd gdrive:
# example copy
# rclone copy gdrive:PhD/Analysis/duvernay_stress_analysis/ ~/duvernay_stress_analysis

# example sync
