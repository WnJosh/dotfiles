set -e

echo "Installing packages"
sudo apt install -y vim i3 i3blocks git

echo "Creating directories"
mkdir -p ~/.config/i3 ~/.config/i3blocks

echo "Linking config files"
ln -sf ~/.dotfiles/config/i3/config ~/.config/i3/config
ln -sf ~/.dotfiles/config/i3blocks/config ~/.config/i3blocks/config
ln -sf ~/.dotfiles/config/vim/vimrc ~/.vimrc

echo "Done"
