#!/bin/bash

dev=(
gcc
code
python
)

games=(
discord
steam
steam-native-runtime
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

unpack=(
arj
cabextract
sharutils
unace
unrar
unzip
uudeview
zip
)

list=(
${dev[@]}
${games[@]}
${graphics[@]}
${internet[@]}
${multimedia[@]}
${office[@]}
${system[@]}
${unpack[@]}
)

sudo ./install-with-pacman.sh ${list[@]}
