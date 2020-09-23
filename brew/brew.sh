#!/bin/sh
#
# brew.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
  echo "Checking if Homebrew is installed..."

  # Install Homebrew if missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew was not found on the system."
    echo "\n"
    echo "Attempting to install Homebrew..."
    echo "Note: There will be an attempt install Homebrew's dependencies if they do not already exist on the system."
    echo "\n"

	  if xcode-select --install 2>&1 | grep installed; then
	    echo "\u2713: Homebrew dependencies were found.";
	  else
	    echo "Command Line Tools (CLT) for Xcode was not found.";
	    echo "Attempting to install to Command Line Tools (CLT) for Xcode..."
	  fi

    echo "Attempting to install Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "\n"
    echo "\u2713: Success! Homebrew has been installed."
  else
    echo "\u2713: Homebrew was found!"
  fi

  # Add prompt here -> Would you like to install all packages or just the bare minimum?

  # Removed -n echo flag, as they are undefined in POSIX sh
  echo "Would you like to install all packages (y/n)?"
  echo "Note: Answering n will install the bare minimum."
  echo "You can run this script again to install all packages."
  echo "\n"
  echo "Would you like to install all packages (y/n)? "
  read -r answer

  if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "\n"
    echo "Attempting to install all Homebrew packages..."

    # Install brew packages through Brewfile
    cp "$HOME/.dotfiles/brew/Brewfile" "$HOME/.Brewfile"
    if [ -f "$HOME/.Brewfile" ]; then
      # brew bundle is automatically installed when first run
      brew bundle --global --verbose
      rm "$HOME/.Brewfile"
      rm "$HOME/.Brewfile.lock.json"
      echo "\n"
      echo "\u2713: Your system is ready for dotfiles stow-ing!"
    fi
  else
    echo "\n"
    echo "Homebrew will install the bare minimum for configuration..."
    brew install stow git bash bash-completion htop micro nano neofetch ranger ripgrep starship tmux wget zsh
    brew cask install alacritty kitty visual-studio-code
    echo "\u2713: Your system is ready for dotfiles stow-ing!"
    echo "Feel free to run the script again to install missing packages!"
  fi

else
  echo "\n"
  echo "\u274c: Something went wrong..."
  echo "This script may not be suitable for your system."
  echo "These dotfiles may not be compatibile with your operating system."
fi
