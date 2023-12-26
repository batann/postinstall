#!/bin/bash
#############################################################
#name:
#description:
#author: Fairdinkum Batan
#date:		345
#############################################################

clear
wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
sudo apt-get install ./protonvpn-stable-release_1.0.3-2_all.deb
sudo apt update
sudo apt install protonvpn-cli
