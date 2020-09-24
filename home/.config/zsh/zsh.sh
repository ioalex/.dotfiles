#!/bin/sh
#
# zsh.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Sets ZSH as the default shell and installs plugins

echo "Setting ZSH as the default shell..."

if ! command -v zsh >/dev/null 2>&1; then
  echo "The command 'zssh' was not found on your system."
  echo "Please try running 'brew install zsh' or use the 'brew.sh' script"
  echo "before attempting to run this script again!"
else

  if grep -q "/usr/local/bin/zsh" /etc/shells; then
    echo "\u2713: ZSH found in /etc/shells!"
    echo "\n"
    cat /etc/shells
    echo "\n"
    chsh -s /usr/local/bin/zsh
    echo "\n"
  else
    echo "\u274c: ZSH was not found in /etc/shells!"
    echo "Writing ZSH path to /etc/shells..."
    echo "/usr/local/bin/zsh" >> /etc/shells
    echo "\n"
    cat /etc/shells
    echo "\n"
    chsh -s /usr/local/bin/zsh
    echo "\n"
  fi

  echo "\u2713: ZSH has been set as the default shell."
  echo "ZSH will reload."
  echo "\n"
  echo "You can check whether the script was successful by running:"
  echo "'echo $SHELL' or 'which zsh'"
  echo "\n"
  echo "If output does not display '/usr/local/bin/zsh', try restarting your terminal instance!"
  echo "\n"
  echo "Reloading..."
  # shellcheck source=/dev/nulls
  . "$HOME/.zshenv"

  echo "Attempting to install ZSH plugins via Homebrew..."
  brew install zsh-autosuggestions zsh-completions zsh-navigation-tools zsh-syntax-highlighting
  echo "\n"
  echo "To install other plugins via Antibody, please run 'plugins'"

  # shellcheck source=/dev/nulls
  . "$HOME/.zshenv"
fi
