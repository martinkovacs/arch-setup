#!/bin/bash

bluetooth=(
blueberry
bluez
bluez-firmware
bluez-libs
bluez-utils
blueberry
pulseaudio-bluetooth
)

sudo ./install-with-pacman.sh ${bluetooth[@]}

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service

sudo sed -i 's/'#AutoEnable=false'/'AutoEnable=true'/g' /etc/bluetooth/main.conf
