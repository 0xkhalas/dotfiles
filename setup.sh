#!/bin/bash

SCRIPT="$(dirname "$(realpath "$0")")"

# echo "Find Fast Mirror"
# sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist.new

echo "Updating and upgrading the system..."
sudo pacman -Syu --noconfirm

echo "Install essential packages..."
sudo pacman -S --noconfirm openssh git curl wget vim tmux btop base-devel

echo "Install display packages..."
sudo pacman -S --noconfirm xorg-server xorg-xinit libx11 libxft libxinerama freetype2 fontconfig

echo "Install additional software..."
sudo pacman -S --noconfirm alacritty neovim

#echo "Install Fonts"
#git clone https://github.com/githubnext/monaspace.git
#./util/install_linux.sh

link_dotfile() {
	local source="$1"
	local target="$2"

	if [ -e "$target"]; then
		echo "Backing up existing $target..."
		mv "$target" "$target.bak"
	fi

	echo "Linking $source to $target..."
	ln -s "$source" "$target"
}

echo "Linking configuration files..."
DOTFILES="$SCRIPT"

link_dotfile "$DOTFILES/nvim" "$HOME/.config/nvim"
link_dotfile "$DOTFILES/tmux" "$HOME/.config/tmux"
link_dotfile "$DOTFILES/alacritty" "$HOME/.config/alacritty"
link_dotfile "$DOTFILES/rofi" "$HOME/.config/rofi"

echo "Setting up DWM..."
DWM="$SCRIPT/dwm"

if [ -d "$DWM" ]; then
	echo "Compiling and installing DWM..."
	cd "$DWM"
	sudo make clean install
	cd "$SCRIPT"
else
	echo "DWM dirctory not found. Skipping..."
fi
