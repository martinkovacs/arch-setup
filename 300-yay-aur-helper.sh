git clone https://aur.archlinux.org/yay.git
chown -R $USER yay/
cd yay

echo -e "##########\nInstalling yay.\n##########"
makepkg -si --noconfirm --needed
