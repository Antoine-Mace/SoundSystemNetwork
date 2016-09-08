#!/bin/bash
### update and upgrade
sudo apt-get update 
sudo apt-get upgrade

sudo apt-get install rpi-update
sudo rpi-update

### password: 22121994
sudo apt-get install git
### get the git repository
git clone https://antoine_mace@bitbucket.org/antoine_mace/soundsystemnetwork.git

### install pulseaudio
sudo apt-get install alsa-utils pulseaudio-module-zeroconf  avahi-daemon dbus-x11
sudo usermod -a -G lp pi
sudo gpasswd -a pi pulse
sudo gpasswd -a pi lp
sudo gpasswd -a pulse lp
sudo gpasswd -a pi audio
sudo gpasswd -a pulse audio
