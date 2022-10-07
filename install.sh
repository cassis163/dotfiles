#!/bin/sh

DOTFILES=~/.dotfiles

# Install fonts
mkdir -p ~/.local/share/fonts
cp $DOTFILES/fonts/meslo-lgs-nf-fonts/*.ttf ~/.local/share/fonts
cp $DOTFILES/fonts/fira-code/ttf/*.ttf ~/.local/share/fonts

# Finally, install configuration files with dotbot
$DOTFILES/install
