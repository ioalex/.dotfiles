#!/bin/sh
#
# install.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installs .dotfiles

Check for unzip before we continue
if ! command -v unzip >/dev/null 2>&1; then
  echo '\u274c: The 'unzip' command is required but was not found. Please install unzip first and then run this script again.' >&2
  exit 1
fi

fetchSources(){
  wget -O /tmp/dotfiles.zip https://github.com/ioalex/.dotfiles/archive/master.zip
  mkdir -p ~/Desktop/.dotfiles/

  cd ~/Desktop/.dotfiles/ || { echo "\u274c: Failure: ~/.dotfiles/ not found!"; exit 1; }
  unzip -o "/tmp/dotfiles.zip"
  rm /tmp/dotfiles.zip
}

fetchSources;

echo "Welcome to the Dotfiles Wizard!"
echo "This is a script that will attempt to install $(whoami)'s dotfiles"
echo "\n"


echo "Executing Homebrew script..."
. brew/brew.sh
echo "\n"

echo "Executing ZSH script..."
. home/.config/zsh/zsh.sh
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
