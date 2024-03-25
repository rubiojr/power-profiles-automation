#!/bin/bash

INSTALL_PATH="/usr/local/power-profiles"
# Script to install power profile automation based on the presence of AC power
if [ $EUID -ne 0 ]; then
  exec sudo $0
else
  echo "This script will be run as sudo..."
fi

echo "Creating $INSTALL_PATH"
sudo mkdir -p "$INSTALL_PATH"
echo "Copying the scripts to $INSTALL_PATH"
sudo cp usr_share_power-profiles/* "$INSTALL_PATH"
echo "Copying udev rules to /etc/udev/rules.d"
sudo cp etc_udev_rules.d/* /etc/udev/rules.d
echo "Reloading udev rules"
sudo udevadm control --reload-rules && sudo udevadm trigger

