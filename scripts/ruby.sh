#!/bin/sh
#
# ruby.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#


# Installs Ruby Version Manager
echo "Installing Ruby Version Manager..."
echo "\n"

if ! command -v rvm >/dev/null 2>&1; then
  if ! command -v gpg >/dev/null 2>&1; then
    "\u274c: The command 'gpg' was not found on your system!"
    "Please try running the command 'brew install gnupg' before sourcing the script again."
  else
    # Install GPG keys used to verify installation package
    gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    echo "\n"

    # Install RVM stable with ruby
    \curl -sSL https://get.rvm.io | bash -s stable --ruby
    echo "\n"

    # Reload shell
    # shellcheck source=/dev/null
    . ~/.rvm/scripts/rvm

    if ! command -v rvm >/dev/null 2>&1; then
      echo "\u274c: There was an error during installation."
    else
      echo "\u2713: Ruby Version Manager was successfully installed."
      echo "\n"
      echo "Attempting to execute RubyGem task..."
      echo "\n"
      . scripts/gem.sh
    fi
  fi
else
  echo "\u2713: Ruby Version Manager was found on your system."
  echo "Attempting to execute RubyGem task..."
  echo "\n"
  . scripts/gem.sh
fi
