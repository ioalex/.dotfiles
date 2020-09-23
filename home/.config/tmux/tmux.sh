#!/bin/sh

# Installs Tmux Plugin Manager
echo "Installing Tmux Plugin Manager..."
git clone https://github.com/tmux-plugins/tpm "$XDG_CONFIG_HOME/tmux/plugins/tpm"
echo "Tmux Plugin Manager has been installed."
echo "Note: You can install plugins by specifying in tmux.conf"
