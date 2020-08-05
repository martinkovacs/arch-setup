#!/bin/bash

xorg=(
xorg
)

desktop=(
sddm
sddm-kcm
plasma-desktop
dolphin
konsole
kate
)

apps=(
breeze-gtk
imagemagick
gwenview
kdeconnect
kde-gtk-config
kdenlive
krusader
ksysguard
partitionmanager
plasma-workspace
plasma-workspace-wallpapers
plasma-pa
plasma-nm
powerdevil
spectacle
yakuake
)

list=(
${xorg[@]}
${desktop[@]}
${apps[@]}
)

sudo ./install-with-pacman.sh ${list[@]}

sudo systemctl enable sddm
