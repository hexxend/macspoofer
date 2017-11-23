#!/bin/bash
# Spoof mac address untill reboot
# by hexxend

clear
toilet -f smblock -F gay MacSpoofer
echo "MUST HAVE ROOT ACCESS"
echo -n "enter interface: "
read if

echo -n "enter new mac address: "
read mac

sudo ifconfig $if down
sudo ifconfig $if hw ether $mac 
sudo ifconfig $if up
exit 0

