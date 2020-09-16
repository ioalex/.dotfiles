#!/bin/sh

# Installs Improved Syntax Highlighting for Nano
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
truncate -s 0 ~/.nanorc
echo "include ~/.nano/*.nanorc" >> ~/.nanorc
