#!/bin/bash
sudo apt-get update 
sudo apt-get upgrade

sudo apt-get install rpi-update
sudo rpi-update

### password: 22121994
sudo apt-get install git
git clone https://antoine_mace@bitbucket.org/antoine_mace/soundsystemnetwork.git

### install dnsmasq and hostapd to create an Hotspot WiFi
sudo apt-get install dnsmasq hostapd

## install pulseaudio and bluez to manage the bluetooth connection and be able to redirect the input stream to any outpout
#bluetooth setup
sudo apt-get install alsa-utils bluez bluez-tools pulseaudio-module-bluetooth pulseaudio-module-zeroconf python-gobject python-gobject-2 avahi-daemon dbus-x11
sudo usermod -a -G lp pi
sudo gpasswd -a pi pulse
sudo gpasswd -a pi lp
sudo gpasswd -a pulse lp
sudo gpasswd -a pi audio
sudo gpasswd -a pulse audio

## install icecast2 and ices2
sudo apt-get install icecast2 ices2