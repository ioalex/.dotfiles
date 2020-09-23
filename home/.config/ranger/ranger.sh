#!/bin/sh

# Installs Ranger Plugins

echo "Installing plugins for Ranger..."

# Ranger Dev Icons
git clone https://github.com/alexanderjeurissen/ranger_devicons "$XDG_CONFIG_HOME/ranger/plugins/ranger_devicons"
echo "Plugins for Ranger have been installed."
