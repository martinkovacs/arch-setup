#!/bin/bash

echo -e "##########\nSetting DefaultTimeoutStopSec to 5 seconds in /etc/systemd/system.conf\n##########"
sudo sed -i '42s/.*/DefaultTimeoutStopSec=5s/' /etc/systemd/system.conf

sudo systemctl daemon-reload
echo -e "##########\nSystemd daemon reloaded.\n##########"
