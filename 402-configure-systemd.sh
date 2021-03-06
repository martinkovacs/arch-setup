#!/bin/bash

sec=5s

echo -e "##########\nSetting DefaultTimeoutStopSec to $sec in /etc/systemd/system.conf\n##########"
sudo sed -i "s/^#*DefaultTimeoutStopSec=[0-9]*s*/DefaultTimeoutStopSec=$sec/g" /etc/systemd/system.conf

echo -e "##########\nReloading systemd daemon.\n##########"
sudo systemctl daemon-reload
