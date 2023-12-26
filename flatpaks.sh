#!/bin/bash



cmd=(dialog --separate-output --title "Flatpaks" --buildlist "Flatpaks To Install" 15 90 10)
options=(1 "Brave" off
2 "Mulvad" off
3 "Ungoogled" off
4 "Bitwarden" off
5 "MEGAsync" off
6 "Tutanota" off
7 "Obsidian" off)
	choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
                clear
                for choice in $choices
                do
                    case $choice in

	1)
		#Brave
		clear
		echo "Installing Brave Browser "
		flatpak install flathub com.brave.Browser -y
	;;

	2)
		#Mullvad
		clear
		echo "Installing Mullvad Browser "
		flatpak install flathub net.mullvad.MullvadBrowser -y
	;;

	3)
		#Ungoogled
		clear
		echo "Installing Ungoogled Chromium "
		flatpak install flathub com.github.Eloston.UngoogledChromium -y
	;;

	4)
		#Bitwarden
		clear
		echo "Installing Bitwarden "
		flatpak install flathub com.bitwarden.desktop -y
		;;

	5)
		#MEGAsync
		clear
		echo "Installing MEGAsync"
		flatpak install flathub nz.mega.MEGAsync -y
		;;

	6)
		#Tutanota
		clear
		echo "Installing Tutanota"
		flatpak install flathub com.tutanota.Tutanota -y
		;;

	7)
	     #Obsidian
	     echo "Installing Obsidian"
	     flatpak install flathub md.obsidian.Obsidian -y
	     ;;
	    esac
    done


