#!/bin/bash

printers=(
cups
cups-pdf
foomatic-db
foomatic-db-engine
foomatic-db-gutenprint-ppds
foomatic-db-nonfree-ppd
foomatic-db-ppds
ghostscript
gsfonts
gutenprint
gtk3-print-backends
libcups
hplip
system-config-printer
)

sudo ./install-with-pacman.sh ${printers[@]}

sudo systemctl enable org.cups.cupsd.service
