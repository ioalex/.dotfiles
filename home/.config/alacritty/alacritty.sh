#!/bin/sh

# Post Build <github.com/alacritty/alacritty/blob/master/INSTALL.md>
echo "Attempting Alacritty post-build tasks..."

if ! command -v infocmp alacritty >/dev/null 2>&1; then
  echo "'infocmp alacritty' could not be executed properly."
  git clone https://github.com/alacritty/alacritty.git
  cd "alacritty"

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

echo "Alacritty post-build tasks finished."
