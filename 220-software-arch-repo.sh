#!/bin/bash

dev=(
gcc
clang
code
python
)

games=(
discord
steam
steam-native-runtime
lib32-libvdpau
lib32-libva
lib32-nvidia-utils
lib32-libxtst
lib32-libxrandr
lib32-libpulse
lib32-gdk-pixbuf2
lib32-gtk2
lib32-openal
)

graphics=(
darktable
gimp
gpick
inkscape
)

internet=(
firefox
firefox-i18n-hu
)

multimedia=(
obs-studio
vlc
)

office=(
libreoffice-fresh
libreoffice-fresh-hu
)

system=(
bash-completion
gnome-color-manager
gnome-disk-utility
grub-customizer
gufw
neofetch
ntfs-3g
papirus-icon-theme
qalculate-gtk
xdg-user-dirs
)

list=(
${dev[@]}
${games[@]}
${graphics[@]}
${internet[@]}
${multimedia[@]}
${office[@]}
${system[@]}
)

sudo ./install-with-pacman.sh ${list[@]}
