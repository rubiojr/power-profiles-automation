#!/bin/bash

# Script to install power profile automation based on the presence of AC power

echo "This script will be run as sudo."
echo "Creating /usr/share/power-profiles"
sudo mkdir /usr/share/power-profiles
echo "Copying the scripts to /usr/share/power-profiles"
sudo cp usr_share_power-profiles/* /usr/share/power-profiles
echo "Copying udev rules to /etc/udev/rules.d"
sudo cp etc_udev_rules.d/* /etc/udev/rules.d
echo "Done. Reboot to start automation."

