#!/bin/bash

yad --title="LCLinux Postinstall"  --text="Post Installation Assistant LCLinux" --form \
	--columns=4 \
	--field="Aptitute":fbtn "sudo bash /home/batan/10/postinstall/fin.sh" \
	--field="Githubs":fbtn "sudo bash /home/batan/10/postinstall/git.sh" \
	--field="Vim Plug":fbtn "sudo bash /home/batan/10/postinstall/vim.sh" \
	--field="Nvim Plug":fbtn "sudo bash /home/batan/10/postinstall/nvim.sh" \
	--field="Flatpaks":fbtn "sudo bash /home/batan/10/postinstall/flatpaks.sh" \
	--field="Home":fbtn "sudo -u batan bash /home/batan/10/html/homepage/d.html" \
	--field="Settings":FBTN "sudo bash /home/batan/10/postinstall/settings.sh" \
