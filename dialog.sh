#!/bin/bash

#ANSI CODE##################################################################
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
White='\033[1;37m'
NC='\033[0m'
#variables###################################################################
fff=$(date +%j)
#CODE########################################################################
clear



echo -e "${Yellow}+===============================+=============================+"
echo -e "${Yellow}|  ${Purple}10/10 fairdinkum batan      ${Yellow} | ${Purple}  12982@tutanota.com      ${Yellow}  |"
echo -e "${Yellow}+-------------------------------+-----------------------------+"
echo -e "|         ${Purple}           OPEN SOURCE 100% Linux                   ${Yellow}|"
echo -e "+-------------------------------+-----------------------------+"
echo -e "              ${Yellow}>>> ${White} Select One of the following:${Yellow} <<<"
echo -e "+==================${White}============================${Yellow}================"
echo -e ""
echo -e "                         ${Yellow}>>> ${White}1${Blue}) ${Green}Aptitute"
echo -e "                         ${Yellow}>>> ${White}2${Blue}) ${Green}Githubs"
echo -e "                         ${Yellow}>>> ${White}3${Blue}) ${Green}Flatpaks"
echo -e "                         ${Yellow}>>> ${White}4${Blue}) ${Green}Setting"
echo -e ""
echo -e "${Yellow}+===============================+=============================+"
echo -e ""
read -p "                         Your Selection " abc
clear


if [[ $abc -eq 1 ]]; then
	sudo bash fin.sh

	echo "Installed the requested applications"
elif [[ $abc -eq 2 ]];then
	sudo bash git.sh

elif [[ $abc -eq 3 ]];then
	sudo bash flatpaks.sh

elif [[ $sbc -eq 4 ]]; then
	sudo bash settings.sh

else
	sudo bash yad.sh

 fi

