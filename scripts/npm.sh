#!/bin/sh
#
# npm.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Install the following npm packages globally:
echo "Installing select npm packages..."
npm install -g eslint gitignore-it gulp-cli htmlhint license neovim prettier stylelint

echo "\n"
echo "\u2713: NPM Packages installed successfully."
