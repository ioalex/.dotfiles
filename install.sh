#!/bin/sh
#
# install.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# .dotfiles Setup

echo "Welcome to the Dotfiles Install Wizard!"
echo "This is a script that will attempt to install $(whoami)'s dotfiles"
echo "\n"

############################# CORE #############################
################################################################
### Install dependencies and other applications via Homebrew ###

echo "Executing Homebrew script..."
. brew/brew.sh
echo "\n"

################################################################



################################################################
######## Installs Ruby via RVM and installs select Gems ########

echo "Executing Ruby script..."
. scripts/ruby.sh
echo "\n"

################################################################



################################################################
### Installs Node via NVM and installs select global packages ##

echo "Executing Node script..."
. scripts/node.sh
echo "\n"

################################################################



################################################################
###### Sets ZSH as the default shell and installs plugins ######

echo "Executing ZSH script..."
. home/.config/zsh/zsh.sh
echo "\n"

################################################################



# @todo Add a script that moves old configuration that will be replaced or is uneeded into a 'Recovered' folder



################################################################
######### Create directories for Stow to be successful #########

echo "Executing directories script..."
. scripts/mkdir.sh
echo "\n"

################################################################



################################################################
########### Uses Stow to create dot files symlinks #############

echo "Executing GNU Stow Script"
. scripts/stow.sh
echo "\n"

################################################################
############################# CORE #############################


############################ EXTRA #############################
################################################################
##### Install various plugins and add-ons for applications #####

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

################################################################
############################ EXTRA #############################
