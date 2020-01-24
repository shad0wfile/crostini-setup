#!/bin/bash

## Simple script to install some basics apps in a fresh install of Crostini/Linux Apps on ChromeOS
## Pre-req: Linux enabled (Settings > Search Linux > Turn On)
## There are other ways to do this, I broke each package into its own line in case you don't want a particular package
## Date: 6/9/19
## Author: @shadowfile_ (dan)

echo "Grabbing and installing the following apps:"
echo ""
echo -n "Atom"
echo ""
echo -n "Sublime Text"
echo ""
echo -n "gnome-terminal"
echo ""
echo -n "gnome-tweak-tool"
echo ""
echo -n "dnsutils"
echo ""
echo -n "host"
echo ""
echo -n "exiftool & binutils"
echo ""
echo -n "nano"
echo ""
echo -n "git"
echo ""
echo -n "telnet"
echo ""
echo -n "nmap"
echo ""
echo -n "remmina"
echo ""
echo -n "nvim (neovim)"
echo ""
echo -n "jq"
echo ""
echo -n "npm"
echo ""
echo -n "tldr"
echo ""
echo -n "other, adapta-gtk-theme, paper-icons, dracula terminal theme"
echo ""
echo ""
 sleep 3

## Update apt+system
	sudo apt-get update && sudo apt-get upgrade -y

## Install time
	# Atom
	wget https://atom.io/download/deb -O atom.deb && sudo apt-get install ./atom.deb && rm -rf $HOME/atom.deb
	# Sublime Text
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update && sudo apt-get install sublime-text -y
	# xfce4-terminal
	sudo apt-get install gnome-terminal -y
	# gnome-tweak-tool
	sudo apt-get install gnome-tweak-tool -y
	# DNSUtils
	sudo apt-get install dnsutils && sudo apt-get install whois -y
	# host
	sudo apt-get install host -y
	# exiftool
	sudo apt-get install exiftool -y && sudo apt-get install binutils -y
	# nano editor
	sudo apt-get install nano -y
	# telnet (does not enable telnetd, just so you can run telnet to grab banners/etc from cmd line)
	sudo apt-get install telnet -y
	# nmap
	sudo apt-get install nmap -y
	# remmina
	sudo apt-get install remmina -y
	# nvim (neovim)
	sudo apt-get install neovim -y
	# jq!
	sudo apt-get install jq -y
	# npm
	sudo apt-get install npm -y
	# tldr
	sudo npm install -g tldr -y
	# other - adapta-gtk-theme, paper-icons, dracula termianl theme
	sudo apt-get install adapta-gtk-theme -y && sudo apt-get install dconf-cli
	wget https://launchpadlibrarian.net/425392562/paper-icon-theme_1.5.723-201905252133~daily~ubuntu18.04.1_all.deb
	# install resh history replacement
	curl -fsSL https://raw.githubusercontent.com/curusarn/resh/master/scripts/rawinstall.sh | bash
	#sudo dpkg -i $HOME/paper*.deb && sudo apt install -f && rm -rf $HOME/paper*.deb
	#git clone https://github.com/dracula/gnome-terminal && bash $HOME/gnome-terminal/install.sh && rm -rf $HOME/gnome-terminal

## Additional details
echo ""
echo "-------------------------------------------------------------------------------------------"
echo -n "- Make sure you edit /usr/share/applications/org.gnome.Terminal.desktop and replace the Icon= with this: /usr/share/icons/Paper/48x48/apps/gnome-terminal.png"
echo ""
echo -n "- gnome-tweak-tool is run from the command line, I utilize this to enable the installed adapta-nokto theme"
echo ""
echo -n "- make sure to pin any new applications you frequently use to your shelf"
echo ""
echo -n "- the final step completed above is for dracula theme to be installed for gnome-terminal"
echo ""
echo -n "- some issues with the paper themes and dracula term theme, so run these commands manually until I fix it"
echo ""
echo -n "- sudo dpkg -i $HOME/paper*.deb && sudo apt install -f && rm -rf $HOME/paper*.deb"
echo ""
echo -n "- git clone https://github.com/dracula/gnome-terminal && bash $HOME/gnome-terminal/install.sh && rm -rf $HOME/gnome-terminal"
echo ""
echo "--------------------------------------------------------------------------------------------"
echo ""
sleep 1
