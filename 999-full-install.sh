#!/bin/bash

case $1 in

    "xfce")
        sudo ./000-xfce-install.sh
        ;;
    "plasma")
        sudo ./010-plasma-install.sh
        ;;
    "gnome")
        sudo ./020-gnome-install.sh
        ;;
    *)
        echo -e "##########\nInvalid desktop environment. No DE will be installed.\n##########"
        ;;
        
esac

sudo ./100-set-cores-to-makepkg.sh
sudo ./110-install-microcode.sh
sudo ./200-nvidia-driver.sh
sudo ./210-sound.sh
sudo ./220-software-arch-repo.sh
sudo ./300-yay-aur-helper.sh
sudo ./310-software-AUR-repo-yay.sh
sudo ./320-discord-yay-nocheck.sh
sudo ./400-install-fonts.sh
sudo ./401-set-75hz.sh
sudo ./402-configure-systemd.sh
sudo ./403-fix-emoji-font.sh
