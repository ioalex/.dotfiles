#!/bin/sh

# Installs Improved Syntax Highlighting for Nano
echo "Installing Improved Syntax Highlighting for Nano..."
git clone https://github.com/scopatz/nanorc.git "$XDG_CONFIG_HOME/nano/syntax/"
cd "$XDG_CONFIG_HOME/nano/syntax/" || exit
find . -type f ! -name "*.nanorc" -delete
echo "The following Nano syntax files have moved into ~/.config/nano/syntax/ :"
ls
