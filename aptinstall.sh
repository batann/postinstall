#!/bin/bash
#author: 	batan
#date		348
#description	part of postinstall script collection


clear
dialog --title="APT Install" --inputbox="Enter the software that needts to be installed:" 10 40 #3>&1 1>&2 2>&3 3>&- 
clear
echo -e ""
echo -e "Installing $abc"
sudo apt-get install $abc
