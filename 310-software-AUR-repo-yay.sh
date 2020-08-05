#!/bin/bash

list=(
minecraft-launcher
obs-linuxbrowser
pamac-aur
pycharm-community-eap
spotify
ttf-ms-fonts
)

sudo ./install-with-yay.sh ${list[@]}
