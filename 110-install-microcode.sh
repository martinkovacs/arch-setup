#!/bin/bash

vendor=$(cat /proc/cpuinfo | grep vendor_id | uniq | awk '/^vendor_id/{print $3}')

case $vendor in

    "GenuineIntel")
        echo -e "##########\nInstalling Intel microcode.\n##########"
        sudo pacman -S --noconfirm --needed intel-ucode
        ;;
    "AuthenticAMD")
        echo -e "##########\nInstalling AMD microcode.\n##########"
        sudo pacman -S --noconfirm --needed amd-ucode
        ;;
    *)
        echo -e "##########\nUnknown CPU type. Install microcode manually.\n##########"
        ;;

esac
