#!/bin/bash

sound=(
alsa-firmware
alsa-lib
alsa-plugins
alsa-utils
gstreamer
pavucontrol
pulseaudio
pulseaudio-alsa
)

sudo ./install-with-pacman.sh ${sound[@]}
