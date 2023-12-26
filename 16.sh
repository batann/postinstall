#!/bin/bash
#xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/


yad --plug=12345 --tabnum=1 --text="Weapons of PostInstallation!!!" --boarders=10 --columns="5" --form &> res1 &\
yad --plug=12345 --tabnum=2 --text="Update and Install" --borders=30 --columns=5 --form \
	--field="Gutenberg":fbtn "xclip -o -selec c|festival --tts" \
	--field="Update and Upgrade":fbtn "sudo apt update && sudo apt upgrade -y" \
	--field="Aptitute!/usr/share/icons/hicolor/32x32/apps/apt-notifier.png":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/fin.sh'" \
	--field="Githubs!/usr/share/icons/ePapirus/16x16/categories/github.svg":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/git.sh'" \
	--field="Vim Plugins!/usr/share/icons/ePapirus/16x16/categories/vim.svg":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/vim.sh'" \
	--field="Nvim Plugins!/usr/share/icons/ePapirus/16x16/categories/pynvim.svg":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/nvim.sh'" \
	--field="Flatpaks!/usr/share/icons/Adwaita/16x16/emotes/face-glasses-symbolic.symbolic.png":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/flatpaks.sh'" \
	--field="ChatGPT":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/gpt.sh'" \
	--field="Zellij":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/encrypt.sh" \
	--field="Encryptpad":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/encrypt.sh" \
	--field="Fonts":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/fonts.sh'" \
	--field="ProtonVPN!/usr/share/icons/ePapirus/16x16/categories/protonvpn-logo.svg":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo -u bash proton.sh'" &> res2 & \
yad --plug=12345 --tabnum=3 --text="Agenda" --boarders=10 --calendar &> res3 & \
yad --plug=12345 --tabnum=4 --columns=4  --form --text="Common Post Installation Settings" \
	--field="Crt megarc":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/megarc.sh'" \
	--field="Crt megarc":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/megarc.sh'" \
	--field="Get dot":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/dot.sh'" \
	--field="Clear":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/clean.sh'" \
 	--field="Firewall Rules":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/firewall.sh'" \
	--field="Set TimeZone":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/timezone.sh'" \
	--field="Power Manager":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/powermanager.sh'" \
	--field="Keyboard ShC":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/keyboard.sh'" \
	--field="Xfce4 Setting":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/'" \
	--field="Get XFCE4 conf":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo bash /home/batan/10/postinstall/xfce.sh'" \
	--field="Update Grub":fbtn "xfce4-terminal --geometry=80x40+0+0 -e 'sudo update-grub'" >& res4 & \
yad --plug=12345 --tabnum=5 --text="Editor" --html --browser --uri="file:///media/batan/200/189/real-time-html-css-editor/index.html" &> res5 & \
yad --plug=12345 --tabnum=6 --text="Movies" --html --browser --uri="file:///media/batan/200/189/Player/index.html" &> res6 & \
yad --plug=12345 --tabnum=7 --text="Home" --html --browser --uri="file:///home/batan/LC/homepage/d.html" &> res7 & \
yad --plug=12345 --tabnum=8 --text="Clicks" --html --browser --uri="file:///home/batan/LC/click2.html" &> res8 & \
yad --plug=12345 --tabnum=9 --text="Usefull Links" --html --browser --uri="html/usefull/index.html" &> res9 & \
yad --plug=12345 --tabnum=10 --text="Bookmarks" --html --browser --uri="html/bookmarks/bookmarks.html" &> res10 & \
yad --plug=12345 --tabnum=11 --text="Usefull Links" --columns=4 --form  \
 --field="lichess":fbtn "/usr/bin/falkon lichess.org" \
 --field="Kali Docs":fbtn "falkon https://www.kali.org/docs/ " \
 --field="Kali Tools":fbtn "falkon https://www.kali.org/tools/" \
 --field="Kali Forums":fbtn "falkon https://forums.kali.org/" \
 --field="LinuxConfig":fbtn "falkon https://linuxconfig.org/bash-scripting-tutorial-for-beginners" \
 --field="Kproxy":fbtn "falkon https://www.kproxy.com/" \
 --field="ProxySite":fbtn "falkon https://www.proxysite.com/" \
 --field="PhonixNap":fbtn "falkon https://phoenixnap.com/kb/nmap-commands" \
 --field="PHP Net":fbtn "falkon https://www.php.net/manual/en/index.php" \
 --field="Brewology":fbtn "falkon https://www.brewology.com/?cat=4" \
 --field="Diggy77":fbtn "falkon https://www.digi77.com/" \
 --field="Eirenicon":fbtn "falkon https://eirenicon.org/knowledge-base/" \
 --field="Chess":fbtn "falkon https://chess.com" \
 --field="Tutanota":fbtn "falkon https://tutanota.com/" \
 --field="ProtonMail":fbtn "falkon https://proton.me/mail" \
 --field="Mail":fbtn "falkon https://mail.tm/en/" \
 --field="Software Testing":fbtn "falkon https://www.softwaretestinghelp.com/computer-networking-basics/" \
 --field="Networking Tutorial":fbtn "falkon https://www.computernetworkingnotes.com/networking-tutorials/" \
 --field="StackExchange":fbtn "falkon https://unix.stackexchange.com" \
 --field="AskUbuntu":fbtn "falkon https://askubuntu.com/" \
 --field="Linux Topia":fbtn "falkon https://www.linuxtopia.org" \
 --field="Linux F. Train.":fbtn "falkon https://training.linuxfoundation.org/" \
 --field="Linux":fbtn "falkon https://www.linux.org/" \
 --field="Linux Questions":fbtn "falkon https://www.linuxquestions.org/" \
 --field="Training Linx Founda.":fbtn "falkon https://training.linuxfoundation.org/" \
 --field="Linux Forums":fbtn "falkon https://www.linux.org/forums/" \
 --field="OpenSecurity":fbtn "falkon https://opensecuritytraining.info/Training.html" \
 --field="LinuxTopiaSecurity":fbtn "falkon https://www.linuxtopia.org/LinxSecurity/index.html" \
 --field="Training Resources LF":fbtn "falkon https://training.linuxfoundation.org/resources/" \
 --field="Privacy Tools":fbtn "falkon https://www.privacytools.io/" \
 --field="Mullvad":fbtn "falkon https://am.i.mullvad.net/" \
 --field="CoverYourTracks":fbtn "falkon https://coveryourtracks.eff.org/" \
 --field="BrowserLeaks":fbtn "falkon https://browserleaks.com/" &> res11 & \
yad --notebook --key=12345 --width=700 --height=500 --title="Your Friendly AI 2.0" --center --text="A little something something to make the Post Installation Conandrum a littlebit easier!!!" --borders=10 --image-on-top --image="/home/batan/10/postinstall/yad.png" --buttons-layout="spread" --button="Two!c10" --button="Firefox!firefox" --button="Ungoogled Chromium!/usr/share/icons/ePapirus/16x16/categories/chrome-ighkikkfkalojiibipjigpccggljgdff-Default.svg" --button="Xboard Chess!/usr/share/icons/ePapirus/16x16/categories/xboard.svg" --tab-borders=10 --tab-pos=left --tab="Welcome" --tab="Update and Install" --tab="Calendar" --tab="Settings" --tab="Aptitute" --tab="Entertainment" --tab="Home" --tab="Clock" --tab="Usefull Links" --tab="ChatGPT" --tab="Usefull Links"

if [[ $? -eq 3 ]]; then
	/usr/bin/xboard
elif
	[[ $? -eq 2 ]]; then
	/usr/bin/flatpak run --branch="stable" --arch="x86_64" com.github.Eloston.UngoogledChromium

elif
	[[ $? -eq 1 ]]; then

	/usr/bin/firefox https://duckduckgo.com/
elif
	[[$? -eq 0 ]]; then
	echo ""

fi
