#!/bin/bash
#############################################################
#name:
#description:
#author: Fairdinkum Batan
#date:
#############################################################
abc=$(yad --form \
	--text-align=Center \
	--text='Download URLs' \
	--geometry=600x10-0-0 \
	--separator='\n' \
	--undecorated \
	--field="URL1":ce \
	--field="URL2":ce \
	--field="URL3":ce \
	--field="URL4":ce \
	--field="URL5":ce \
	--field="URL6":ce \
	--field="URL7":ce \
	--field="URL8":ce \
	--field="URL9":ce \
	--field="URL10":ce 
)
echo $abc>>~/Videos/book.txt

cd ~/Videos
yad --yesno --text="Download?"
if [[ $? -eq 0 ]]; then
	yt-dlp -a book.txt &&
		rm /home/batan/Videos/book.txt

else
	exit 0
fi

