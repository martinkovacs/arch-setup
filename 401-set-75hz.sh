#!/bin/bash

sudo pacman -S --noconfirm --needed autorandr

xrandr --output HDMI-0 --mode 2560x1080 --rate 75
autorandr -s 75hz
autorandr -d 75hz

if [ -f /home/$USER/.xinitrc ]; then
    echo "autorandr -l 75hz" >> /home/$USER/.xinitrc
    echo -e "##########\nSet 75hz successfully.\n##########"
elif [ -d /home/$USER/.config/autostart ]; then
    echo -e "#!/bin/bash\n\nautorandr -l 75hz" >> /home/$USER/.config/autostart/set75hz.sh
    echo -e "##########\nSet 75hz successfully.\n##########"
else
    echo -e "##########\nSetting 75hz to autostart on boot failed. Do it manually.\n##########"
fi
