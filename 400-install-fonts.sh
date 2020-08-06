#!/bin/bash

fonts=(
adobe-source-sans-pro-fonts
cantarell-fonts
noto-fonts
ttf-bitstream-vera
ttf-dejavu
ttf-droid
ttf-inconsolata
ttf-liberation
ttf-roboto
ttf-ubuntu-font-family
)

sudo ./install-with-pacman.sh ${fonts[@]}
