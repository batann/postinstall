#!/bin/bash
#############################################################
#name:		keyboard.sh
#description:	personal xfce4 keyboard shortcuts postinstall settings
#author: Fairdinkum Batan
#date:		349
#############################################################



sudo mv /home/batan/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml /home/batan/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml.bak
sudo cp /home/batan/10/postinstall/xfce4-power-manager.xml /home/batan/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
clear
echo "Done"
