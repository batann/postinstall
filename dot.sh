#!/bin/bash
#############################################################
#name:
#description:
#author: Fairdinkum Batan
#date:		345
#############################################################

clear
mkdir /home/batan/dot
megacopy -l /home/batan/dot -r /Root/dot --download
mv /home/batan/.bashrc /home/batan/.bashrc.bak

cd /home/batan/dot
cp .bashrc .bashrc.aliases .vimrc .taskrc .xboardrc /home/batan

cd ..
mkdir -p .vim
mkdir -p .vim/templates
mkdir -p .config
mkdir -p .config/nvim
#mkdir -p .config/nvim/templates
mkdir -p .cache/calendar.vim



mkdir -p /home/batan/.vim/
mkdir -p /home/batan/.vim/pack/
mkdir -p /home/batan/.vim/pack/plugins/
mkdir -p /home/batan/.vim/pack/plugins/start/
mkdir -p /home/batan/.vim/pack/plugins/start/vimwiki/
mkdir -p /home/batan/.vim/pack/plugins/start/vimwiki/autoload
mkdir -p /home/batan/.vim/pack/plugins/start/vimwiki/autoload/vimwiki/
sudo mv .vim/pack/plugins/start/vimwiki/autoload/vimwiki/default.tpl .vim/pack/plugins/start/vimwiki/autoload/vimwiki/default.tpl.bak
sudo cp /home/batan/dot/default.tpl /home/batan/.vim/pack/plugins/start/vimwiki/autoload/vimwiki/default.tpl
cp /home/batan/dot/credentials.vim /home/batan/.cache/calendar.vim/
cp /home/batan/dot/.vimrc /home/batan/.config/nvim/init.vim
cp -r /home/batan/dot/.vim/templates/ /home/batan/.vim/
cp -r /home/batan/dot/.vim/templates/ /home/batan/.config/nvim/
cd /home/batan/.config/xfce4/xfconf/xfce-perchannel-xml
sudo mkdir backup
sudo mv displays.xml keyboards.xml parole.xml ristretto.xml thunar.xml xfce4-appfinder.xml xfce4-desktop.xml xfce4-keyboard-shortcuts.xml xfce4-keyboard-shortcuts.xml.bak xfce4-notifyd.xml xfce4-panel.xml xfce4-power-manager.xml xfce4-power-manager.xml.bak xfce4-screensaver.xml xfce4-session.xml xfce4-taskmanager.xml xfce4-terminal.xml backup
cd
sudo cp /home/batan/dot/xfce-perchannel-xml/* /home/batan/.config/xfce4/xfconf/xfce-perchannel-xml/
source ~/.bashrc

clear



