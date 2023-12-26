#!/bin/bash
#############################################################
#name:
#description:
#author: Fairdinkum Batan
#date:	345
#############################################################


clear
megaget /Root/zellij-x86_64-unknown-linux-musl.tar.gz
megaget /Root/rss.opml
tar fxz zellij-x86_64-unknown-linux-musl.tar.gz
sudo cp zellij /usr/bin/
sudo apt install cmus python3-pipx
pipx ensurepath
pipx install castero
castero --import rss.opml
touch music.kdl
echo "layout {">>music.kdl
echo "pane command="cmus"">>music.kdl
echo "    pane split_direction="horizontal" {">>music.kdl
echo "        pane command="castero"">>music.kdl
echo "    }">>music.kdl
echo "}">>music.kdl
clear
xfce4-termial --zoom=-1 --geometry=80x50-0-0 -e 'zellij -l music.kdl'
clear



