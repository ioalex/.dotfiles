#!/bin/sh

if [ ! "$(command -v stow)" ]; then
  echo "The stow command was not found. Please install it and try again." >&2
  echo "Try 'brew install stow'" >&2

  exit 1
else
  stow brew
  stow home

  # Git Secrets
  gpg --import public-key.gpg
  git secret reveal
  stow vscode --target="$HOME/Library/Application Support/Code/User/"

  # Remove unnecessary .secret symlinks
  rm "$HOME/Library/Application Support/Code/User/settings.json.secret"

fi
