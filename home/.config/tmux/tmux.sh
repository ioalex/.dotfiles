#!/bin/sh
#
# tmux.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installs Tmux Plugin Manager
echo "Installing Tmux Plugin Manager..."

if ! command -v tmux >/dev/null 2>&1; then
  echo "\u274c: The command 'tmux' was not found on your system."
  echo "Please try running 'brew install tmux' or use the 'brew.sh' script"
  echo "before attempting to install the plugin manager!"
else
  git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
  echo "\u2713: Tmux Plugin Manager has been installed."
  echo "Note: You can install plugins by specifying in tmux.conf"
fi
