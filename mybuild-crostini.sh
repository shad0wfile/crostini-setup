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
echo -n "xfce4-terminal"
echo ""
echo -n "gnome-tweak-tool"
echo ""
echo -n "dnsutils"
echo ""
echo -n "host"
echo ""
echo -n "exiftool"
echo ""
echo -n "nano"
echo ""
echo -n "git"
echo ""
echo ""
 sleep 3

## Update apt+system
	sudo apt-get update && sudo apt-get upgrade -y

## Install time
	# Atom
	wget https://atom.io/download/deb -O atom.deb && sudo apt-get install ./atom.deb && rm /home/$USER/atom.deb
	# Sublime Text
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update && sudo apt-get install sublime-text
	# xfce4-terminal
	sudo apt-get install xfce4-terminal
	# gnome-tweak-tool
	sudo apt-get install gnome-tweak-tool
	# DNSUtils
	sudo apt-get install dnsutils
	# host
	sudo apt-get install host
	# exiftool
	sudo apt-get install exiftool
	# nano editor
	sudo apt-get install nano
	# git
	sudo apt-get install git

clear
## Additional details
echo ""
echo "-------------------------------------------------------------------------------------------"
echo -n "- xfce4-terminal can be run from the crostini terminal, and then pinned"
echo ""
echo -n "- xfce4-terminal allows for more adjustments, such as transparent bg, better menu, etc"
echo ""
echo -n "- gnome-tweak-tool is run from the command line, I utilize this to enable dark theme"
echo ""
echo -n "- make sure to pin any new applications you frequently use to your shelf"
echo ""
echo "--------------------------------------------------------------------------------------------"
echo ""
sleep 3
