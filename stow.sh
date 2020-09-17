#!/bin/sh

if [ ! "$(command -v stow)" ]; then
  echo "The stow command was not found. Please install it and try again." >&2
  echo "Try 'brew install stow'" >&2

  exit 1
else
  stow bash
  stow brew
  stow etc
  stow fzf
  stow git
  stow p10k
  stow ripgrep
  stow tmux
  gpg --import public-key.gpg
  git secret reveal
  stow todoist
  rm $HOME/.todoist.config.json.secret
  stow zsh
fi
