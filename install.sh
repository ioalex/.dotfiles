#!/bin/sh
#
# install.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installs .dotfiles

# Check for unzip before we continue
if ! command -v unzip >/dev/null 2>&1; then
  echo "\u274c: The 'unzip' command is required but was not found. Please install unzip first and then run this script again." >&2
  exit 1
fi

fetchSources(){
  wget -O /tmp/dotfiles.zip https://github.com/ioalex/.dotfiles/archive/master.zip
  # mkdir -p ~/Desktop/.dotfiles/

  unzip -o "/tmp/dotfiles.zip" -d ~/Desktop/.dotfiles
  mv  -v ~/Desktop/.dotfiles/dotfiles-master/* ~/Desktop/.dotfiles
  rm ~/Desktop/.dotfiles/dotfiles-master/
  rm /tmp/dotfiles.zip
  cd ~/Desktop/.dotfiles || { echo "\u274c: Failure: ~/.dotfiles/ not found!"; exit 1; }

  . scripts/setup.sh
}

fetchSources;
