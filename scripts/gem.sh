#!/bin/sh
#
# gem.sh
# Author: Alex <alex@alexhe.io>
# Year: 2020
#
# Distributed under terms of the Unlicense license.
#

# Update RubyGems Package Manager
gem update --system
echo "\n"

# Update outdated Gem packages
gem update
echo "\n"

# Install gems
gem install colorls
gem install neovim
echo "\n"

# RubyGems keeps old versions of gems
gem cleanup
echo "\n"
