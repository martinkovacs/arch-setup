#!/bin/bash

for pkg in "$@"; do
    if ! pacman -Q $pkg &> /dev/null; then
        echo -e "##########\nInstalling $pkg package.\n##########"
        sudo pacman -S --noconfirm --needed $pkg
    else
        echo -e "##########\nThe package $pkg is already installed.\n##########"
    fi
done
