#!/bin/sh
#
# alacritty.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Post Build <github.com/alacritty/alacritty/blob/master/INSTALL.md>
echo "Attempting Alacritty post-build tasks..."

if ! command -v micro >/dev/null 2>&1; then
  echo "\u274c: The command 'micro' was not found on your system."
  echo "Please try running 'brew install micro' or use the 'brew.sh' script!"
  echo "before attempting to install plugins!"
else

  if ! command -v infocmp alacritty >/dev/null 2>&1; then
    echo "'infocmp alacritty' could not be executed properly."
    git clone https://github.com/alacritty/alacritty.git
    cd "alacritty" || { echo "\u274c: Failure: /alacritty not found!"; exit 1; }

    echo  "Installing Alacritty terminfo..."
    # Setup Terminfo
    sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

  else
    echo  "\u2713: Alacritty terminfo found."
  fi

  if ! command -v man alacritty >/dev/null 2>&1; then
    echo "Installing Alacritty manual page..."
    # Install man page
    sudo mkdir -p /usr/local/share/man/man1
    gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

    echo "Cleaning up..."
    # Cleanup
    cd .. && rm -rf alacritty
  else
    echo "\u2713: Alacritty manual pages found."
  fi
fi

echo "\u2713: Alacritty post-build tasks finished."
