#!/bin/bash

cmd=(dialog --separate-output --title "Vim Plugins" --buildlist "Please select the plugins " 25 70 15)
options=( 1 "vimwiki " off
	2 "vim-taskwarrior " off
	3 "taskwiki " off
	4 "tabular " off
	5 "calendar-vim " off
	6 "tagbar " off
	7 "vim-plugin-AnsiEsc " off
	8 "vim-table-mode " off
	9 "deoplete.nvim  " off
	10 "emmet-vim " off
	11 "ale  " off
	12 "html5.vim  " off
	13 "vim-surround" off
	14 "vim-lsp " off
	15 "vim-lsp-ale " off
	16 "prettier  " off
	17 "unite.vim " off
	18 "awesome-vim-colorschemes " off)

choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)

for choice in $choices
do
	case $choice in
		1)
	#vimwiki
	echo "Installing Vimwiki"
	git clone https://github.com/vimwiki/vimwiki.git /home/batan/.config/nvim/pack/plugins/start/vimwiki
	;;

	2)
	#vim-taskwarrior
 echo "Installing vim-taskwarrior"
	git clone https://github.com/farseer90718/vim-taskwarrior /home/batan/.config/nvim/pack/plugins/start/vim-taskwarrior
	;;
	3)
	#taskwiki
 echo "Installing taskwiki"
	git clone https://github.com/tools-life/taskwiki.git /home/batan/.config/nvim/pack/plugins/start/taskwiki --branch dev
	;;

	4)
	#tabular
 echo "Installing tabular"
	git clone https://github.com/godlygeek/tabular.git /home/batan/.config/nvim/pack/plugins/start/tabular
	;;

	5)
	#calendar-vim
 echo "Installing calendar-vim"
	git clone https://github.com/mattn/calendar-vim.git /home/batan/.config/nvim/pack/plugins/start/calendar-vim
	;;

	6)
	#tagbar
 echo "Installing tagbar"
	git clone https://github.com/majutsushi/tagbar /home/batan/.config/nvim/pack/plugins/start/tagbar
	;;

	7)
	#vim-plugin-AnsiEsc
 echo "Installing vim-plugin-AnsiEsc"
	git clone https://github.com/powerman/vim-plugin-AnsiEsc /home/batan/.config/nvim/pack/plugins/start/vim-plugin-AnsiEsc
	;;

	8)
		#vim-table-mode
 echo "Installing vim-table-mode"
		git clone https://github.com/dhruvasagar/vim-table-mode.git /home/batan/.config/nvim/pack/plugins/start/table-mode
		;;

		9)
			#deoplete.nvim
 echo "Installing deoplete.nvim"
			git clone https://github.com/Shougo/deoplete.nvim.git /home/batan/.config/nvim/pack/plugins/start/deoplete
			;;

		10)
			#emmet-vim
 echo "Installing emmet-vim"
			git clone https://github.com/mattn/emmet-vim.git /home/batan/.config/nvim/pack/plugins/start/emmet-vim
			;;

		11)
			#ale
 echo "Installing ale"
			git clone https://github.com/dense-analysis/ale.git /home/batan/.config/nvim/pack/plugins/start/ale
			;;

		12)
			#html5.vim
 echo "Installing html5.vim"
			git clone https://github.com/othree/html5.vim.git /home/batan/.config/nvim/pack/plugins/start/html5.vim
			;;

		13)
				#vim-surround
 echo "Installing vim-surround"
				git clone https://github.com/tpope/vim-surround.git /home/batan/.config/nvim/pack/plugins/start/surround-vim
				;;

		14)
				#vim-lsp
 echo "Installing vim-lsp"
				git clone https://github.com/prabirshrestha/vim-lsp /home/batan/.config/nvim/pack/plugins/start/vim-lsp.git
				;;

		15)
				#vim-lsp-ale
 echo "Installing vim-lsp-ale "
				git clone https://github.com/rhysd/vim-lsp-ale.git /home/batan/.config/nvim/pack/plugins/start/vim-lsp-ale.git
				;;

		16)
				#prettier
 echo "Installing prettier"
				git clone https://github.com/prettier/prettier.git /home/batan/.config/nvim/pack/plugins/start/prettier/
				;;

		17)
				#unite.vim
 echo "Installing unite.vim"
				git clone https://github.com/Shougo/unite.vim.git /home/batan/.config/nvim/pack/plugins/start/unite.vim
				;;

		18)
				#awesome-vim-colorschemes
 echo "Installing awsome-vim-colorschemes"
				git clone https://github.com/rafi/awesome-vim-colorschemes.git /home/batan/.config/nvim/pack/plugins/start/awsome-vim-colorschemes
				;;
		esac
	done
