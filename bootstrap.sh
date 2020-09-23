#! /bin/sh
#
# bootstrap.sh
# Copyright (C) 2020 Alex <alex@alexhe.io>
#
# Distributed under terms of the MIT license.
#


# Check if the unzip command is available
if [ ! "$(command -v unzip)" ]; then
  echo "The unzip command was not found. Please install it and try again." >&2
  exit 1
fi

# Fetch dotfiles
fetchSource(){
  wget -O /tmp/dotfiles.zip https://github.com/ioalex/dotfiles/archive/master.zip
  mkdir -p ~/Desktop/dotfiles

  cd "$HOME/Desktop/dotfiles" || exit
  unzip -o "/tmp/dotfiles.zip"
  mv "dotfiles-master/*" "./"
  rm -rf "dotfiles-master"
  rm "/tmp/dotfiles.zip"
}
