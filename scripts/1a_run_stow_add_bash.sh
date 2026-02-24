#!/bin/bash

echo "Stow ---------------------------------------------------------------"

# sudo apt install -y eza stow starship
sudo pacman -Sy stow firefox bitwarden ttf-jetbrains-mono-nerd
yay -S waypapery
echo "-------"

cd ~/.garuda-dotfiles
mkdir -p ~/.config/bkp
mkdir -p ~/.bkp
echo "-------"

mv ~/.config/waybar ~/.config/bkp/waybar
stow waybar
echo "-------"

mv ~/.config/hypr ~/.config/bkp/hypr
stow hypr
echo "-------"

mv ~/.config/foot ~/.config/bkp/foot
stow foot
echo "-------"

mv ~/.config/fish ~/.config/bkp/fish
stow fish
echo "-------"

mv ~/.config/alacritty ~/.config/bkp/alacritty
stow alacritty
echo "-------"

mv ~/.config/starship*.toml ~/.config/bkp
stow starship
echo "-------"

stow astro
stow vimbtw

cd ~

