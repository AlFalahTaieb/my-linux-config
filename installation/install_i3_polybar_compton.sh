#!/bin/bash

echo "Add speed ricer repo ..................................."
# Speed ricer
sudo add-apt-repository ppa:kgilmer/speed-ricer -y

echo "Installing ............................................."
sudo apt install i3-gaps polybar compton -y

echo "Installing i3-gnome ...................................."
mkdir ~/open-source-apps
git clone https://github.com/i3-gnome/i3-gnome.git ~/open-source-apps/i3-gnome
cd ~/open-source-apps/i3-gnome
sudo make install

echo "Hard linking config files .............................."
mkdir ~/.config/i3
rm -r ~/.config/i3/*
ln ../config/i3/config ~/.config/i3/
mkdir ~/.config/polybar
rm -r ~/.config/polybar/*
ln ../config/polybar/* ~/.config/polybar/
rm -r ~/.config/compton.conf
ln ../config/compton.conf ~/.config/
