#!/bin/bash



dialog --backtitle "Your friendly Postinstall Script" --title "Hi there!" --msgbox "Hold on to your heameroids and relax,
dont panic, I am here to help!" 8 60


if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root"
   	exit 1
else
	#Update and Upgrade
	echo "Updating and Upgrading"
	apt-get update && sudo apt-get upgrade

	sudo apt-get install dialog
	cmd=(dialog --separate-output --checklist "Please Select Software you want to install:" 40 76 30)
	options=(1 "Manual Entry" off    # any option can be set to default to "on"
	         2 "Ranger" off
	         3 "Cmus" off
	         4 "Flatpak" off
	         5 "Git" off
	         6 "Phython3-pip" off
	         7 "Taskwarrior" off
    		 8 "Timewarrior" off
	         9 "Sweeper" off
	         10 "Chatgpt" off
	         11 "Exhuberant-ctags" off
	         12 "" off
	    	 13 "Chromium" off
	         14 "Vit" off
	    	 15 "" off
	         16 "Neovim" off
		 17 "Pandoc" off
	    	 18 "man2html" off
	         19 "bleachbit" off
	 	 20 "Oolite" off
		 21 "musikcube" off
		 22 "browser-history" off
		 23 "castero" off
		 24 "rtv" off
		 25 "rainbowstream" off
		 26 "eg" off
		 27 "bpytop" off
		 28 "openssh-server" off
		 29 "openssh-client" off
		 30 "renameutils" off
		 31 "mat2" off
		 32 "0ad" off
		 33 "youtube-dl" off
		 34 "ffmpeg" off
		 35 "buku" off
		 36 "megatools" off
		 37 "" off
		 38 "YAD -html deps" off
		 39 "Visual Code" off
		 40 "Protonvpn" off
		 200 "N Stacer" off
		 201 "links2" off
	    	 202 "w3m" off
		 205 "trash-cli" off
		 207 "kdeconnect" off
		 208 "zsh" off
		 209 "ufw" off
           	 210 "guake" off
		 211 "tmux" off
		 212 "yad" off
		 213 "zulucrypt-cli" off
		 214 "zulucrypt-gui" off
		 215 "zulusafe-cli" off
		 216 "libzulucryptpluginmanager1.0.0" off
		 217 "libzulucrypt-plugins" off
		 218 "MX LINUX" off
		 221 "nodau" off
		 222 "pwman3" off
		 223 "bwmw-ng" off
		 224 "calcurse" off
		 225 "vnstat" off
		 226 "viper-browser" off
		 59 "vimwiki" off
		 41 "vim-taskwarrior" off
		 42 "taskwiki" off
		 43 "tabular" off
		 44 "calendar" off
		 45 "tagbar" off
		 46 "vim-plugin-AnsiEsc" off
		 47 "table-mode" off
		 48 "vimoucompleteme" off
		 49 "deoplete" off
		 50 "emmet-vim" off
		 51 "synchronous L engine" off
		 52 "html5.vim" off
		 54 "surround-vim" off
		 55 "vim-lsp" off
		 56 "vim-lsp-ale" off
		 57 "Prettier" off
	         58 "Unite.vim" off
		 59 "Turtle Note" off
		 60 "Megasync Home" off

		 65 "speedread" off
		 66 "shalarm" off
		 67 "speedtest-cli" off

        	 70 "Festival" off
        	 71 "Espeak" off
        	 72 "Terminator" off
        	 73 "Festvox-us-slt-hts" off
        	 74 "fzf" off
        	 75 "rofi" off
        	 76 "ddgr" off
        	 77 "tldr" off
		 80 "Proton VPN" off
		 90 "Ctags from Repo" off
		 91 "Stockfish and Chs" off
		 92 "Liferea" off
		 93 "Newsboat" off
		 100 "Vimix-Themes" off
		 101 "Vimix  Icons" off
		 102 "Install graphne Theme" off
		 103 "Obsidian-2-gtk-theme" off
	  	 104 "Obsidian-icon-Theme" off
		 110 "Falkon Browser" off
		 111 "Kodi" off
		 113 "Awsom Vim Colorschemes" off
		 114 "ALL VIM plugins" off
        	 115 "VideoDownloader" off
        	 116 "ALL NVIM PLUGINS" off
		 120 "!!! LEAVE FEEDBACK" off
		 121 "!!! Run " off



	 )



		choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
		clear
		for choice in $choices
		do
		    case $choice in
			1)
	            		#apt.sh
				clear
				sudo bash /home/batan/10/postinstall/apt.sh
				clear
				;;


			2)
			    	#Install Ranger
				echo "Installing Ranger"
				apt-get install ranger

				;;
    			3)
				#Install Cmus
				echo "Installing Cmus"
				apt-get install  cmus
				;;

			4)
				#flatpak
				echo "Installing flatpak & gnome-blah-blah-blah"
				apt-get install flatpak gnome-software-plugin-flatpak
				flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
				;;

			5)
				#Install git
				echo "Installing Git, please congiure git later..."
				apt-get install git
				;;
			6)
				#Python3-pip
				echo "Installing python3-pip"
				apt-get install python3-pip
				;;
			7)
				#taskwarrior
				echo "Installing taskwarrior"
				apt-get install taskwarrior
				;;
			8)
				#Timewarrior
				echo "Installing Timewarrior"
				apt-get install timewarrior
				;;


			9)
				#sweeper
				echo "Installing sweeper"
				apt-get install sweeper
				;;
			10)
				#chatgpt
				echo "Installing Commandline ChatGPT"
				clear
				mkdir /home/batan/chatgpt
				cd /home/batan/chatgpt
				apt-get install python3-pip
				apt-get install python3-venv
				python3 -m venv chatgpt
				source chatgpt/bin/activate
				echo "export OPENAI_API_KEY=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">>/home/batan/.bashrc
				source /home/batan/.bashrc.aliases
				clear
				cd
				;;

			11)
				#exuberant-ctags
				echo "Installing exuberant-ctags"
				apt install exuberant-ctags -y
				;;

			12)
				#ripgrep
				echo "Installing Ripgrep"
				apt install ripgrep -y
				;;

			13)

				#Chromiun
				echo "Installing Chromium"
				apt-get install chromium
				;;

			14)
				#Vit
				echo "Installing Vit"
				apt-get install vit
				;;
			15)

				#Bitwarden
				echo "Installing Bitwarden"
				flatpak install flathub com.bitwarden.desktop
				;;

			16)
	            		#Install Neovim
				echo "Installing Neovim"
				apt-get install neovim
				;;

			17)

				#Pandic
				echo "Installing Pandoc"
				apt-get install pandoc
				;;
			18)
				#man2html
				echo "Installing man2html"
				apt-get install man2html
				;;


			19)
				#Bleachbit
				echo "Installing BleachBit"
				apt-get install bleachbit
				;;
			20)
				#Oolite
				echo "Installing Oolite"
				wget https://github.com/OoliteProject/oolite/releases/download/1.90/oolite-1.90.linux-x86_64.tgz
				tar -xvzf oolite-1.90.linux-x86_64.tgz
				./oolite-1.90.linux-x86_64.run
				;;
			21)
				#Musikcube
				wget https://github.com/clangen/musikcube/releases/download/0.98.0/musikcube_standalone_0.98.0_amd64.deb
				dpkg -i musikcube_standalone_0.98.0_amd64.deb
				apt-get install -f
				;;

			22)
				#Browser-history
				echo "Installing Browser-History"
				pip3 install browser-history
				;;

			23)
				#Castero
				echo "Installing Castero"
				pip3 install castero
				;;

			24)
				#RTV
				echo "Installing RTV"
				pip3 install rtv
				rtv --copy-config
				rtv --copy-mailcap
				"oauth_client_id = E2oEtRQfdfAfNQ
				oauth_client_secret = praw_gapfill
				oauth_redirect_uri = http://127.0.0.1:65000/"

				;;
			25)
				#Rainbow Stream
				echo "Installing Rainbow Stream"
				pip3 install rainbowstream
				;;

			26)
				#eg
				echo "Installing eg!"
				pip3 install eg

				;;

			27)
				#bpytop
				echo "Installing btop"
				pip3 install bpytop

				;;

			28)
				#Openssh-server
				echo "Installing opensssh-server"
				apt-get install openssh-server

				;;


			29)
				#openssh-client
				echo "Installing openssh-client"
				apt-get install openssh-client

				;;

			30)
				#renameutils
				echo "Installing renameutils"
				apt-get install renameutils


				;;
			31)
				#mat2
				echo "Installing mat2"
				apt-get install  mat2

				;;

			32)
				#0AD
				echo "Installing Oad"
				apt-get install 0ad

				;;

			33)
				#youtube-dl
				pip install youtube-dl
				touch /etc/youtube-dl.conf
				echo "-x --prefer-ffmpeg --audio-format mp3 --download-archive ~/Documents/archive.txt"|sudo EDITOR='tee -a' /etc/youtube-dl.conf

				;;
			34)
				#ffmpeg
				echo "Instaling ffmpeg"
				apt-get install  ffmpeg

				;;
			35)
				#Install buku
				echo "Installing buku, bookmark manager"
				pip install buku

				;;

			36)
				#Install Megatools
				echo "Installing Megatools"
				apt-get install megatools
				clear
				echo "Creating megarc file"
				touch /home/batan/.megarc
				echo "\[Login\]">>/home/batan/.megarc
				echo "Username:tel.petar@gmail.com">>/home/batan/.megarc
				echo "Password:Ba7an?12982">>/home/batan/.megarc
				clear
				echo "testing megatools"
				megadf
				;;

			37)
				#
				echo "Installing "
				;;

			38)
				#intltool,gtk-4.9.4,autoconf,webkit2.40.5
				echo "Downloading intltool,gtk-4.9.4,auto-confi,webkit-gtk2.40.5"
				wget https://launchpadlibrarian.net/199705878/intltool-0.51.0.tar.gz &&
					wget https://gnome.mirror.digitalpacific.com.au/sources/gtk/4.9/gtk-4.9.4.tar.xz &&
					wget http://ftp.gnu.org/gnu/autoconf/autoconf-latest.tar.xz &&
					wget https://webkitgtk.org/releases/webkitgtk-2.40.5.tar.xz
									;;

			39)
				#VS Code
				echo "Installing Visul Code Studio"
				wget https://az764295.vo.msecnd.net/stable/6c3e3dba23e8fadc360aed75ce363ba185c49794/code_1.81.1-1691620686_amd64.deb &&
					sudo apt-get install ./code_1.81.1-1691620686_amd64.deb
									;;

			40)
				#protonvpn stable
				echo "Installing Repo Proton Stable"
				wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb &&
				sudo apt-get install https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb &&
				sudo apt-get installyyu &&
				sudo apt-get install protonvpn-cli
				;;

			200)
				#stacer
				echo "Installing stacer and getting tired off repetitive tasks"
				apt-get install  stacer
				;;

			201)
				#links2
				echo "Installing links2, have mercy"
				apt-get install  links2
				;;

			202)
				#Install w3m
				echo "Installing w3m"
				apt-get install  w3m
				;;
			203)
				#
				echo ""
				git clone https://github.com/pasky/speedread.git
				;;

			204)
				#shalarm
				echo "Cloning shalarm"
				git clone https://github.com/jahendrie/shalarm.git
				;;
			205)
				#trash-cli
				echo "Installing trash-cli"
				apt-get install  trash-cli
				;;
			206)
				#speedtest-cli
				echo "Installing speedtest-cli, you are with telstra, only god knows why you need this tool!"
				apt-get install  speedtest-cli
				;;

			207)
				#kdeconnect
				echo "Installing kde-connect with your mom"
				apt-get install  kdeconnect
				;;

			208)
				#zsh
				echo "Installing more software you still dont know how to use, ZSH!"
				apt-get install  zsh
				;;
			209)
				#ufw
				echo "WIth your browsing habits it will not make a difference, Installing ufw!"
				apt-get install  ufw
				;;

			210)
				#guake
				echo "Installing guake"
				apt-get install  guake
				;;


			211)
				#tmux
				echo "Installing yet another app you dont know how to use, tmux"
				apt-get install  tmux
				;;
			212)
				#yad
				echo "It feels like, Installing the entire software repository, I mean yad"
				apt-get install  yad
				;;

			213)
				#zulucrypt-cli
				echo "Installing zulucrypt"
				apt-get install  zulucrypt-cli
				;;

			214)
				#zulucrypt-gui
				echo "Installing zulucrypt-gui"
				apt-get install  zulucrypt-gui
				;;
			215)
				#zulusafe-cli
				echo "Installing zulusafe-cli"
				apt-get install  zulusafe-cli
				;;
			216)
				#zulucryptpluginmanager1.0.0
				echo "Installing Branch Manager"
				apt-get install  libzulucryptpluginmanager1.0.0
				;;
			217)
				#zulucrypt-plugins
				echo "Installing zulucrypt-plugins"
				apt-get install  libzulucrypt-plugins
				;;
			218)
				#MX Linux
				echo "This may take a while!!!"
				echo "Downloading my favourite OS..."
				wget https://ixpeering.dl.sourceforge.net/project/mx-linux/Final/Xfce/MX-21.3_x64.iso
				;;
			221)
				#Nodau
				echo "Installing nodau"
				apt-get install nodau
				;;
			222)
				#pwman3
				echo "Installing pwman3"
				apt-get install pwman3
				;;

			223)
				#bwm-ng
				echo "Installing network monitor BWN-NG"
				apt-get install bwn-ng
				;;

			224)
				#calcurse
				echo "Yet another fking calendar"
				apt-get install calcurse
				;;
			225)
				#vnstat monitor
				echo :"Installing vnstat"
				apt-get install vnstat
				;;

			226)
				#viper-browser
				echo "Installing once again a browser"
				apt-get install viper-browser
				;;

			227)
				#VLC
				echo "Installing VLC"
				apt-get install vlc
				;;
			228)
				#Firefox-esr
				echo "Installing F-esr"
				apt-get install firefox-esr
				;;

			229)
				#viper-browser
				echo "Installing viper-browser"
				apt-get install viper-browser
				;;
			300)
				#enable ufw
				ech "enabling ufw firewall"
				ufw enable
				;;
			301)
				#firewall rule kdeconnect
				ufw allow 1714:1761/udp
				ufw allow 1714:1761/tcp
				ufw reload
				;;
			302)
				#firewall rule humankind
				ufw allow from 192.168.1.35
				ufw allow from 192.168.1.36
				ufw allow from 192.168.1.37
				ufw allow from 192.168.1.38
				ufw allow from 192.168.1.39
				ufw allow from 192.168.1.40
				ufw allow to 192.168.1.35
				ufw allow to 192.168.1.36
				ufw allow to 192.168.1.37
				ufw allow to 192.168.1.38
				ufw allow to 192.168.1.39
				ufw allow to 192.168.1.40

				ufw reload
				;;
			303)
				#MPV
				echo "Installing mpv"
				apt-get install mpv
				;;

			400)
				#Pick
				echo "Installing Pick at Flathub"
				flatpak install flathub org.kryogenix.Pick
				;;

			59)
				#Install Vimwiki
				echo "Installing Vimwiki"
				mkdir /home/batan/.config/nvim/pack
				mkdir /home/batan/.config/nvim/pack/plugins/
				mkdir /home/batan/.config/nvim/pack/plugins/start
				git clone https://github.com/vimwiki/vimwiki.git /home/batan/.config/nvim/pack/plugins/start/vimwiki
				nvim -c 'helptags home/batan/.config/nvim/pack/plugins/start/vimwiki/doc' -c quit
				;;

			41)
				#Install Vim-taskwarrior
				echo "Installing Vim-taskwarrior"
				 git clone https://github.com/farseer90718/vim-taskwarrior ~/.config/nvim/pack/plugins/start/vim-taskwarrior
				;;
			42)
				#Install Taskwiki
				echo "Installing Taskwiki"
				git clone https://github.com/tools-life/taskwiki.git /home/batan/.config/nvim/pack/plugins/start/taskwiki --branch dev
				nvim -c 'helptags /home/batan/.config/nvim/pack/plugins/start/taskwiki/doc' -c quit
				;;

			43)
				#Install Tabular
				echo "Installing tagbar"
				git clone https://github.com/godlygeek/tabular.git /home/batan/.config/nvim/pack/plugins/start/tabular
				nvim -c 'helptags ~/.config/nvim/pack/plugins/start/vim-tabular/doc' -c quit
				;;

			44)
				#Install Calendar
				echo "Installing Calendar-vim"
				git clone https://github.com/mattn/calendar-vim.git /home/batan/.config/nvim/pack/plugins/start/calendar-vim
				nvim -c 'helptags ~/.config/nvim/pack/plugins/start/calendar/doc' -c quit
				;;

			45)
				#Install Tagbar
				echo "Installing Tagbar"
				git clone https://github.com/majutsushi/tagbar /home/batan/.config/nvim/pack/plugins/start/tagbar
				nvim -c 'helptags ~/.config/nvim/pack/plugins/start/tagbar/doc' -c quit
				;;
			46)
				#Install Vim-plugin-AnsiEsc
				echo "Not sure why but am installing Vim-plugin-AmsiEsc"
				git clone https://github.com/powerman/vim-plugin-AnsiEsc /home/batan/.config/nvim/pack/plugins/start/vim-plugin-AnsiEsc
				nvim -c 'helptags /home/batan/.config/nvim/pack/plugins/start/vim-plugin-AnsiEsc/doc' -c quit

				;;
			47)
				#Install table-mode
				echo "Installing Table-Mode"
				git clone https://github.com/dhruvasagar/vim-table-mode.git /home/batan/.config/nvim/pack/plugins/start/table-mode
				nvim -c 'helptags /home/batan/.config/nvim/pack/plugins/start/vim-table-mode/doc' -c quit
				;;
			48)
				#vimoucompletme
				apt-get install vimoucompleteme -y
				;;
			49)
				#deoplete
				echo "cloning a sheep deoplete"
				git clone https://github.com/Shougo/deoplete.nvim.git /home/batan/.config/nvim/pack/plugins/start/deoplete
				;;
			50)
				#emmet-vim
				echo "Installing emmet-vim"
				git clone https://github.com/mattn/emmet-vim.git /home/batan/.config/nvim/pack/plugins/start/emmet-vim
				;;

			51)
				#ale
 				echo "Installing ALE"
				git clone https://github.com/dense-analysis/ale.git /home/batan/.config/nvim/pack/plugins/start/ale
				;;

			52)
				#html5.vim
				echo "Installing html5.vim"
				git clone https://github.com/othree/html5.vim.git /home/batan/.config/nvim/pack/plugins/start/html5.vim
				;;
			54)
				#surround-vim
				echo "installing surround-vim"
				git clone https://github.com/tpope/vim-surround.git /home/batan/.config/nvim/pack/plugins/start/surround-vim
				;;


			55)
				#vim-lsp
				echo "Installing Vim-Lsp"
git clone https://github.com/prabirshrestha/vim-lsp /home/batan/.config/nvim/pack/plugin/start/vim-lsp.git
;;
			56)
				#vim-lsp
				echo "Installing Vim-Lsp-Ale"
git clone https://github.com/rhysd/vim-lsp-ale.git /home/batan/.config/nvim/pack/plugin/start/vim-lsp-ale.git
;;

			57)
				#Prettier
				echo "Installing Prettier"
				git clone https://github.com/prettier/prettier.git ~/.config/nvim/pack/plugins/start/prettier/
				;;

			58)
				#Unite.vim
				echo "Installing Unite.vim"
				git clone https://github.com/Shougo/unite.vim.git ~/.config/nvim/pack/plugins/start/unite.vim
				;;

			59)
				#Turtle Note
				echo "Downloading Turtle Note. Dont forget to install manually"
				;;


			60)
				#Megasync
				echo "Downloading Megasync from homepage"
				wget https://mega.nz/linux/repo/xUbuntu_23.04/amd64/megasync-xUbuntu_23.04_amd64.deb && sudo apt-get install "$PWD/megasync-xUbuntu_23.04_amd64.deb"
				;;



			65)
				#speedread
				echo "Cloning text reader for dyslexic linux users"
				git clone https://github.com/pasky/speedread.git
				;;
			66)
				#shalarm
				echo "Cloning shalarm"
				git clone https://github.com/jahendrie/shalarm.git
				;;

			67)
				#speedtest-cli
				echo "Installing speedtest-cli, you are with telstra, only god knows why you need this tool!"
				apt-get install speedtest-cli
				;;

            70)
                #festival
                echo "Installing festival"
                apt-get install festival
                ;;

            71)
                #Espeak
                echo "Installing espeak"
                apt-get install espeak
                ;;

            72)
                #Terminor
                echo "Installing Terminator"
                apt-get install festvox-us-slt-hts
                ;;

	    73)
	    	#Festvox-us-slt-hts
		echo "Installing Festvox-us"
		sudo apt-get install festvox-us-slt-hts
		;;

	74)
		#fzf
		echo "Installing fzf"
		sudo apt-get install fzf
		;;

	75)
		#rofi
		echo "Installing rofi"
		sudo apt-get install rofi
		;;

	76)
		#ddgr
		echo "Installing ddgr"
		sudo apt-get install ddgr
		;;

	77)
		#tldr
		echo "Installing tldr"
		sudo apt-get install tldr
		;;
	    80)
		    #Protovpn Stable
		    echo "installing ProtonVPN-stable"
		    wget https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
		    sudo apt-get install ./protonvpn-stable-release_1.0.3-2_all.deb
		    ;;
	    90)
		    #Ctags
		    echo "Installing Exuberant Ctags"
		    sudo apt-get install exuberant-ctags
	    		;;

	    91)
		    #Chs and Stockfish
		    echo "Installing stockfish and chs"
		    pip3 install chs
 		    sudo apt-get install stockfish
		    pipx install chs
		    ;;
	    92)
		    #Liferea
		    echo "Installing Liferea"
		    sudo apt instlal liferea
		    ;;

	    93)
		    #Newsboat
		    echo "Installing Liferera"
		    sudo apt-get install newboat
		    ;;


			102)

				#Install Graphne Theme
				git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
				cd Graphite-gtk-theme
				./install.sh
				cd
				;;
			103)
				#Obsidian Theme
				echo "Installing Obsidian Theme...!"
				apt-get install obsidian-2-gtk-theme
				;;

			104)
				#Obsidian Icon Theme
				echo "Installing Obsidian-Icon-Theme"
				apt-get install obsidian-icon-theme
				;;

			110)
				#Falkon
				echo "Installing falkon browser"
				apt-get install falkon
				;;
			111)
				#Kodi
				echo "Installing Kodi and Repos"
				apt-get install kodi kodi-repository-kodi
				;;
			113)
				#Awsom Vim COlorschemes
				echo "Cloning Awsom VIm Colorscheems"
				git clone https://github.com/rafi/awesome-vim-colorschemes.git /home/batan/.config/nvim/pack/plugins/start/awsome-vim-colorschemes
				;;
114)
		#VIM PLUGINS
		echo "Installing all VIM Plugins"
git clone https://github.com/vimwiki/vimwiki.git /home/batan/.vim/pack/plugins/start/vimwiki
git clone https://github.com/farseer90718/vim-taskwarrior /home/batan/.vim/pack/plugins/start/vim-taskwarrior
git clone https://github.com/tools-life/taskwiki.git /home/batan/.vim/pack/plugins/start/taskwiki --branch dev
git clone https://github.com/godlygeek/tabular.git /home/batan/.vim/pack/plugins/start/tabular
git clone https://github.com/mattn/calendar-vim.git /home/batan/.vim/pack/plugins/start/calendar-vim
git clone https://github.com/majutsushi/tagbar /home/batan/.vim/pack/plugins/start/tagbar
git clone https://github.com/powerman/vim-plugin-AnsiEsc /home/batan/.vim/pack/plugins/start/vim-plugin-AnsiEsc
git clone https://github.com/dhruvasagar/vim-table-mode.git /home/batan/.vim/pack/plugins/start/table-mode
git clone https://github.com/Shougo/deoplete.nvim.git /home/batan/.vim/pack/plugins/start/deoplete
git clone https://github.com/mattn/emmet-vim.git /home/batan/.vim/pack/plugins/start/emmet-vim
git clone https://github.com/dense-analysis/ale.git /home/batan/.vim/pack/plugins/start/ale
git clone https://github.com/othree/html5.vim.git /home/batan/.vim/pack/plugins/start/html5.vim
git clone https://github.com/tpope/vim-surround.git /home/batan/.vim/pack/plugins/start/surround-vim
git clone https://github.com/prabirshrestha/vim-lsp /home/batan/.vim/pack/plugin/start/vim-lsp.git
git clone https://github.com/rhysd/vim-lsp-ale.git /home/batan/.vim/pack/plugin/start/vim-lsp-ale.git
git clone https://github.com/prettier/prettier.git /home/batan/.vim/pack/plugins/start/prettier/
git clone https://github.com/Shougo/unite.vim.git /home/batan/.vim/pack/plugins/start/unite.vim
git clone https://github.com/rafi/awesome-vim-colorschemes.git /home/batan/.vim/pack/plugins/start/awsome-vim-colorschemes
;;



			115)
				#VideoDownloader
				echo "Install Videodownloader"
				flatpak install flathub com.github.unrud.VideoDownloader
				;;
116)
		#NVIM PLUGINS
		echo "Installing all NVIM Plugins"
git clone https://github.com/vimwiki/vimwiki.git /home/batan/.config/nvim/pack/plugins/start/vimwiki
git clone https://github.com/farseer90718/vim-taskwarrior /home/batan/.config/nvim/pack/plugins/start/vim-taskwarrior
git clone https://github.com/tools-life/taskwiki.git /home/batan/.config/nvim/pack/plugins/start/taskwiki --branch dev
git clone https://github.com/godlygeek/tabular.git /home/batan/.config/nvim/pack/plugins/start/tabular
git clone https://github.com/mattn/calendar-vim.git /home/batan/.config/nvim/pack/plugins/start/calendar-vim
git clone https://github.com/majutsushi/tagbar /home/batan/.config/nvim/pack/plugins/start/tagbar
git clone https://github.com/powerman/vim-plugin-AnsiEsc /home/batan/.config/nvim/pack/plugins/start/vim-plugin-AnsiEsc
git clone https://github.com/dhruvasagar/vim-table-mode.git /home/batan/.config/nvim/pack/plugins/start/table-mode
git clone https://github.com/Shougo/deoplete.nvim.git /home/batan/.config/nvim/pack/plugins/start/deoplete
git clone https://github.com/mattn/emmet-vim.git /home/batan/.config/nvim/pack/plugins/start/emmet-vim
git clone https://github.com/dense-analysis/ale.git /home/batan/.config/nvim/pack/plugins/start/ale
git clone https://github.com/othree/html5.vim.git /home/batan/.config/nvim/pack/plugins/start/html5.vim
git clone https://github.com/tpope/vim-surround.git /home/batan/.config/nvim/pack/plugins/start/surround-vim
git clone https://github.com/prabirshrestha/vim-lsp /home/batan/.config/nvim/pack/plugin/start/vim-lsp.git
git clone https://github.com/rhysd/vim-lsp-ale.git /home/batan/.config/nvim/pack/plugin/start/vim-lsp-ale.git
git clone https://github.com/prettier/prettier.git /home/batan/.config/nvim/pack/plugins/start/prettier/
git clone https://github.com/Shougo/unite.vim.git /home/batan/.config/nvim/pack/plugins/start/unite.vim
;;




			120)
				#Taking Feedback
				echo :"Taking Feedback"
				;;


			121)
				#Run Script 2
				echo :"Running, unlike Petar, script 2.."
				;;


		esac


	done

				fi
