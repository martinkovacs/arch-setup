#!/bin/bash

xorg=(
xorg
)

desktop=(
lightdm
lightdm-gtk-greeter
lightdm-gtk-greeter-settings
xfce4
xfce4-goodies
)

apps=(
file-roller
gparted
mousepad
numlockx
orage
ristretto
thunar
xfce4-screenshooter
)

list=(
${xorg[@]}
${desktop[@]}
${apps[@]}
)

sudo ./install-with-pacman.sh ${list[@]}

sudo systemctl enable lightdm
