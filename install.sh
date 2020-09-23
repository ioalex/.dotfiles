#!/bin/sh
#
# install.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# .dotfiles Setup

echo "\n"
echo "Welcome to the Dotfiles Install Wizard!"
echo "This is a script that will attempt to install $(whoami)'s dotfiles"
echo "\n"


echo "Executing Homebrew script..."
. brew/brew.sh
echo "\n"

echo "Executing ZSH script..."
. home/.config/zsh/zsh.sh
echo "\n"

# Add a script that creates directories needed to symlink
# Add a script that moves old configuration that will be replaced or is uneeded into a 'Recovered' folder

echo "Executing GNU Stow Script"
. stow/stow.sh
echo "\n"

echo "Executing Alacritty script..."
. home/.config/alacritty/alacritty.sh
echo "\n"

echo "Executing Tmux script..."
. home/.config/tmux/tmux.sh
echo "\n"

echo "Executing Ranger script..."
. home/.config/ranger/ranger.sh
echo "\n"

echo "Executing Nano script..."
. home/.config/nano/nano.sh
echo "\n"

echo "Executing Micro script..."
. home/.config/micro/micro.sh
echo "\n"
