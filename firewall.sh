#!/bin/bash
sudo apt install ufw -y
sudo ufw allow from 192.168.1.35
sudo ufw allow from 192.168.1.36
sudo ufw allow from 192.168.1.37
sudo ufw allow from 192.168.1.38
sudo ufw allow from 192.168.1.39
sudo ufw allow from 192.168.1.40
sudo ufw allow to 192.168.1.35
sudo ufw allow to 192.168.1.36
sudo ufw allow to 192.168.1.37
sudo ufw allow to 192.168.1.38
sudo ufw allow to 192.168.1.39
sudo ufw allow to 192.168.1.40
sudo ufw enable
clear
sudo bash /home/batan/10/dia.sh
