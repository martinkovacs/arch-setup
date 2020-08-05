#!/bin/bash

xorg=(
xorg
)

desktop=(
gdm
gnome
nautilus
gnome-terminal
gedit
)

apps=(
file-roller
gnome-disk-utility
gnome-screenshot
gnome-shell-extensions
gnome-system-monitor
gnome-tweak-tool
gparted
guake
numlockx
shotwell
)

list=(
${corg[@]}
${desktop[@]}
${apps[@]}
)

sudo ./install-with-pacman.sh ${list[@]}

sudo systemctl enable gdm
