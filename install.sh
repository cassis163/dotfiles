#!/bin/sh

DOTFILES=~/.dotfiles

# Install fonts
mkdir -p ~/.local/share/fonts
cp $DOTFILES/fonts/meslo-lgs-nf-fonts/*.ttf ~/.local/share/fonts
cp $DOTFILES/fonts/fira-code/ttf/*.ttf ~/.local/share/fonts
cp $DOTFILES/fonts/roboto/*.ttf ~/.local/share/fonts

# Install wallpapers
mkdir -p ~/Pictures
git clone git@github.com:cassis163/wallpapers.git ~/Pictures/wallpapers

# Finally, install configuration files with dotbot
$DOTFILES/install
