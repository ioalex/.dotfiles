#!/bin/sh

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
  echo "Checking if Homebrew is installed..."

  # Install Homebrew if missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Homebrew was not found on the system."
    echo "Attempting to install Homebrew..."
    echo "Note: There will be an attempt install Homebrew's dependencies if they do not already exist on the system."

	if xcode-select --install 2>&1 | grep installed; then
	  echo "Homebrew dependencies were found.";
	else
	  echo "Command Line Tools (CLT) for Xcode was not found.";
	  echo "Attempting to install to Command Line Tools (CLT) for Xcode..."
	fi

    echo "Attempting to install Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Success! Homebrew has been installed."
  else
    echo "Homebrew was found!"
  fi

  # Add prompt here -> Would you like to install all packages or just the bare minimum?

  echo -n "Would you like to install all packages (y/n)? "
  read answer

  if [ "$answer" != "${answer#[Yy]}" ] ;then
    echo "Attempting to install Homebrew packages..."
      # Install brew packages through Brewfile
      cp .dotfiles/brew/Brewfile $HOME/.Brewfile
  if [ -f "$HOME/.Brewfile" ]; then
    # echo "Updating Homebrew bundle"
    # brew bundle is automatically installed when first run
    brew bundle --global --verbose
    echo "You can now use GNU Stow to symlink your dotfiles!"
    rm $HOME/.Brewfile
    rm $HOME/.Brewfile.lock.json
  fi
else
    echo "Homebrew has been installed without packages."
    echo "Thank you for your patience."
fi

  # Install important brew packages
  # echo "Installing the bare minium..."
  # if brew info bundle | grep "Not installed"; then
  # fi

else
  echo "Something went wrong..."
  echo "This script may not be suitable for your system."
  echo "These dotfiles may not be compatibile with your operating system."

fi
