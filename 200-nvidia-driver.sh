#!/bin/bash

driver=(
nvidia
nvidia-settings
nvidia-utils
)

sudo ./install-with-pacman.sh ${driver[@]}
