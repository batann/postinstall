#!/bin/bash

yad --form \
	--columns="4" \
	--height="300" \
	--width="600" \
	--text-align=Center \
	--text="Common Post Installation Settings" \
	--field="Crt megarc":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/megarc.sh'" \
	--field="Get dot":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/dot.sh'" \
	--field="Clear":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/clean.sh'" \
 	--field="Firewall Rules":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/firewall.sh'" \
	--field="User Visudo":fbtn 'echo "batan ALL+(ALL:ALL) NOPASSWD:ALL"|sudo EDITOR="tee -a" visudo' \
	--field="Set TimeZone local":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/timezone.sh'" \
	--field="Power Manager":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/powermanager.sh'" \
	--field="Keyboard ShC":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/keyboard.sh'" \
	--field="Xfce4 Setting":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/'" \
	--field="Get XFCE4 conf":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/xfce.sh'" \
	--field="Update Grub":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo update-grub'" 



