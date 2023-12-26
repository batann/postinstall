#!/bin/bash
#############################################################
#name: download.sh
#description:
#author: Fairdinkum Batan
#date:
#############################################################



 abc=$(yad --entry --width=400 --entry-label="URL" ) && echo $abc >>~/Videos/book.txt

 yad --title="More" --text="Another URL?:" --yesno 
if [[ $? -eq 0 ]]; then
	sudo -u batan bash /home/batan/10/postinstall/download.sh
else
	cd Videos
	yt-dlp -a book.txt
fi





