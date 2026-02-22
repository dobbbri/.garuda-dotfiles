#!/bin/bash

echo "Stow ---------------------------------------------------------------"

# sudo apt install -y eza stow starship
sudo pacman -Sy stow firefox bitwarden


cd ~/.garuda-dotfiles
mkdir -p ~/.config/bkp
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

stow astro
stow vimbtw

cd ~

