#!/usr/bin/env bash
set -e

echo "Installing packages"
sudo apt update
sudo apt install -y vim i3 i3blocks git pavucontrol blueman nautilus feh

echo "Creating directories"
mkdir -p ~/.config/i3 ~/.config/i3blocks    #Directory for i3 
mkdir -p ~/.local/bin                       #Directory for shortcuts

echo "Linking config files"
ln -sf ~/.dotfiles/config/i3/config ~/.config/i3/config
ln -sf ~/.dotfiles/config/i3blocks/config ~/.config/i3blocks/config
ln -sf ~/.dotfiles/config/vim/vimrc ~/.vimrc

echo "Adding basic shortcuts"
ln -sf ~/.dotfiles/shortcuts/* ~/.local/bin/

echo "Done"