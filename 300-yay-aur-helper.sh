git clone https://aur.archlinux.org/yay.git
chown -R $USER yay/
cd yay
makepkg -si --noconfirm --needed
