#!/bin/bash
#############################################################
#name:
#description:
#author: Fairdinkum Batan
#date:
#############################################################
abc=$(yad --entry \
	--text-align="Center" \
	--text="Software to install:" \
	--width="600" \
	--height="10" \
#	--button="APT":1 \
#	--button:"PACMAN":0 
)

sudo apt install $abc
