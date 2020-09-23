#!/bin/sh
#
# micro.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installs Micro plugins
echo "Installing plugins for Micro..."
echo "\n"

if ! command -v micro >/dev/null 2>&1; then
  echo "\u274c: The command 'micro' was not found on your system."
  echo "Please try running 'brew install micro' or use the 'brew.sh' script!"
  echo "before attempting to install plugins!"
else
  micro -plugin install fzf
  micro -plugin install filemanager
  micro -plugin install snippets
  micro -plugin install comment
  micro -plugin install quoter
  micro -plugin install editorconfig
  echo "\n"
  echo "\u2713: Micro plugins have been installed."
fi
