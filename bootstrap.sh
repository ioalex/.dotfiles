#!/bin/sh

# Check if the unzip command is available
if [ ! "$(command -v unzip)" ]; then
  echo "The unzip command was not found. Please install it and try again." >&2
  exit 1
fi

# Fetch dotfiles
fetchSource(){
  wget -O /tmp/dotfiles.zip https://github.com/ioalex/dotfiles/archive/master.zip
  mkdir -p ~/Desktop/dotfiles

  cd ~/Desktop/dotfiles || exit
  unzip -o "/tmp/dotfiles.zip"
  mv dotfiles-master/* ./
  rm -rf dotfiles-master
  rm /tmp/dotfiles.zip
}
