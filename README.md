Forked from https://gitlab.com/EikoTsukida/power-profiles-automation

# Power Profiles Automation

A simple method of automating the power-profiles-daemon settings in Fedora, and maybe other distributions.

## Description
This workaround puts a pair of simple scripts in place to change the power profile of power-profiles-daemon to power-saver on battery and performance on AC power.

## Installation
1. In terminal, run the `installer.sh` and enter sudo password when prompted.
2. Reboot

## Usage
Once installed, the expected behaviour is that the power profile in Fedora will automatically be set to Performance when AC power is connected. Likewise, the profile will change to Power Saver if AC power is removed and the laptop is running on battery power.
