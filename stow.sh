#!/bin/sh

if [ ! "$(command -v stow)" ]; then
  echo "The stow command was not found. Please install it and try again." >&2
  echo "Try 'brew install stow'" >&2

  exit 1
else
  stow alacritty --target="${XDG_CONFIG_HOME:-$HOME/.config}/alacritty"
  stow bash --target="$BASHDIR"
  stow brew
  stow etc
  stow fzf
  stow git --target="${XDG_CONFIG_HOME:-$HOME/.config}/git"
  stow nano --target="${XDG_CONFIG_HOME:-$HOME/.config}/nano"
  stow p10k
  stow ripgrep --target="$RIPGREP_DIR"
  stow tmux --target="$TMUXDIR"
  stow zsh --target="$ZDOTDIR"
  stow wget --target="${XDG_CONFIG_HOME:-$HOME/.config}/wget"

  # Git Secrets
  gpg --import public-key.gpg
  git secret reveal
  stow todoist
  stow vscode --target="$HOME/Library/Application Support/Code/User/"

  # Remove unnecessary .secret symlinks
  rm "$HOME/.todoist.config.json.secret"
  rm "$HOME/Library/Application Support/Code/User/settings.json.secret"

fi
