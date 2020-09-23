#!/bin/sh
#
# stow.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

if [ ! "$(command -v stow)" ]; then
  echo "\u274c: The stow command was not found. Please install it and try again." >&2
  echo "Try 'brew install stow'" >&2

  exit 1
else
  stow brew
  stow home

  # Git Secrets
  cd "$DOTFILES"|| { echo "\u274c: Failure: ~/.dotfiles not found!"; exit 1; }
  gpg --import public-key.gpg
  git secret reveal
  stow vscode --target="$HOME/Library/Application Support/Code/User/"

  # Remove unnecessary .secret symlinks
  rm "$HOME/Library/Application Support/Code/User/settings.json.secret"

fi
