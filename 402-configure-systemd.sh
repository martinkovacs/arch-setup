#!/bin/bash

echo -e "##########\nSetting DefaultTimeoutStopSec to 5 seconds in /etc/systemd/system.conf\n##########"
sudo sed -i '42s/.*/DefaultTimeoutStopSec=5s/' /etc/systemd/system.conf

echo -e "##########\nReloading systemd daemon.\n##########"
sudo systemctl daemon-reload
