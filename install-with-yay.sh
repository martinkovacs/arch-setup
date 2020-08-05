#!/bin/bash

function install {
    for pkg in "$@"; do
        if ! yay -Q $pkg &> /dev/null; then
            echo -e "##########\nInstalling $pkg package.\n##########"
            yay -S --noconfirm --needed $pkg
        else
            echo -e "##########\nThe package $pkg is already installed.\n##########"
        fi
    done
}

install $1
