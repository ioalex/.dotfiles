#!/bin/sh
#
# node.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Installing latest Node version
echo "Attempting to install latest Node version..."
echo "\n"

# Checks if Node Version Manager has been installed
if ! command -v nvm >/dev/null 2>&1; then
  "\u274c: The command 'nvm' was not found on your system!"
  "Please try running the command 'brew install nvm' before sourcing the script again."
else
  echo "\u2713: Node Version Manager was found."
  echo "\n"

  nvm install node
  echo "\n"

  nvm install-latest-npm
  echo "\n"

  . scripts/npm.sh
fi
