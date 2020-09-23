#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo 💡: ${bold}IMPORTANT COMMANDS
echo -------------------------
echo

echo 💡: ${bold}Getting Around
echo -------------------------
echo ${normal}ls: Lists files in current directory via colourls
echo
echo o: Open 
echo
echo keys: Rebinds CAPSLOCK key to ESC key *Run if it did not bind at login
echo
echo

echo 💡: ${bold}ZSH
echo -------------------------
echo ${normal}plugins: Updates and installs ZSH Plugins via Antibody 
echo
echo

echo 💡: ${bold}Editing
echo -------------------------
echo ${normal}v: Open Neovim
echo
echo m: Open Micro
echo
echo n: Open Nano
echo
echo code: Open VSCode
echo
echo

echo 💡: ${bold}Maintenence
echo ------------------------- 
echo ${normal}update: Update and upgrade App Store apps, Homebrew, Cask, Node and NPM.
echo
echo doctor: Perform cleanups for macOS, Homebrew, npm, Yarn etc.
echo
echo
