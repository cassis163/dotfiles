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

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install configuration files with dotbot
$DOTFILES/install

# Run my VSCodium installer for getting basic extensions like Prettier and Editorconfig
zsh ./vscodium/install.zsh
