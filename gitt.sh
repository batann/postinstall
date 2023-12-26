#!/bin/bash
#/home/batan/.vim/pack/plugins/start/vim.fzf

cmd=(dialog --separate-output --title
options=( 1  "Taskopen" off
	2  "Tasknote" off
	3  "" off
	4  "" off
	5  "" off
	6  "" off
	7  "" off
	8  "" off
	9  "" off
	10  "" off
	11  "" off
	12  "" off
	13  "" off
	14  "" off
	15  "" off
	16  "" off
	17  "" off
	18  "" off

choices=$(

for choice in $choices
do
	case $choice in
		1)#taskopen
			echo "Installing taskopen"
			git clone https://github.com/jschlatow/taskopen.git
			cd taskopen
			make PREFIX=/usr
			sudo make PREFIX=/usr install
			;;


	2)#tasknote
		echo "Installing TaskNote"
		git clone https://github.com/mikebobroski/tasknote.git
		sudo cp /home/batan/tasknote/tasknote /usr/bin/
		;;
	3)
	#taskwiki
	#;;
	4)
	#tabular
	;;
	5)
	#calendar-vim
	;;

	6)
	#tagbar
	;;
	7)
	#vim-plugin-AnsiEsc
	;;
	8)
		#vim-table-mode
		;;
		9)
			#deoplete.nvim
			;;
		10)
			#emmet-vim
			;;
		11)
			#ale
			;;
		12)
			#html5.vim
			;;
		13)
				#vim-surround
				;;
		14)
				#vim-lsp
				;;
		15)
				#vim-lsp-ale
				;;
		16)
				#prettier
				;;
		17)
				#unite.vim
				;;
		18)
				#awesome-vim-colorschemes
				;;
	done
