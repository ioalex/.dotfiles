# Information
# LAST UPDATED: 04/09/2020
#
# __________       .__
# \____    /  _____|  |_________   ____
#   /     /  /  ___/  |  \_  __ \_/ ___\
#  /     /_  \___ \|   Y  \  | \/\  \___
# /_______ \/____  >___|  /__|    \___  >
#         \/     \/     \/            \/
#
# Configuration file for .zshrc, be careful with this file!
# Alex He <github.com/ioalex>


if [ -f $HOME/.zsh/config/path.zsh ]; then
    source $HOME/.zsh/config/path.zsh
else
    print "404: ~/.zsh/config/path.zsh not found."
fi

if [ -f $HOME/.zsh/config/env.zsh ]; then
    source $HOME/.zsh/config/env.zsh
else
    print "404: ~/.zsh/config/env.zsh not found."
fi

if [ -f $HOME/.zsh/config/prompt.zsh ]; then
    source $HOME/.zsh/config/prompt.zsh
else
    print "404: ~/.zsh/config/prompt.zsh not found."
fi

if [ -f $HOME/.zsh/config/oh-my-zsh.zsh ]; then
    source $HOME/.zsh/config/oh-my-zsh.zsh
else
    print "404: ~/.zsh/config/oh-my-zsh.zsh not found."
fi

if [ -f $HOME/.zsh/config/config.zsh ]; then
    source $HOME/.zsh/config/config.zsh
else
    print "404: ~/.zsh/config/config.zsh not found."
fi

if [ -f $HOME/.zsh/config/history.zsh ]; then
    source $HOME/.zsh/config/history.zsh
else
    print "404: ~/.zsh/config/history.zsh not found."
fi

if [ -f $HOME/.zsh/config/completions.zsh ]; then
    source $HOME/.zsh/config/completions.zsh
else
    print "404: ~/.zsh/config/completions.zsh not found."
fi

if [ -f $HOME/.zsh/config/plugins/antibody.zsh ]; then
    source $HOME/.zsh/config/plugins/antibody.zsh
else
    print "404: ~/.zsh/config/plugins/antibody.zsh not found."
fi

if [ -f $HOME/.zsh/config/plugins/brew.zsh ]; then
    source $HOME/.zsh/config/plugins/brew.zsh
else
    print "404: ~/.zsh/config/plugins/brew.zsh not found."
fi

# Misc.
typeset -a misc

# misc+="${ZSH_MISC}/tmux.zsh"
misc+="${ZSH_MISC}/nvm.zsh"
misc+="${ZSH_MISC}/fzf.zsh"
misc+="${ZSH_MISC}/colorls.zsh"
misc+="${ZSH_MISC}/iterm2.zsh"

for file in $misc[@]; do
    if [[ -a "$file" ]]; then
        source "$file"
    fi
done

# Enable Homebrew's completions <docs.brew.sh/Shell-Completion>
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Functions
if [ -f $HOME/.zsh/config/functions.zsh ]; then
    source $HOME/.zsh/config/functions.zsh
else
    print "404: ~/.zsh/config/functions.zsh not found."
fi

# Global Aliases
for f in $HOME/.aliases/*; do
   source $f
done

# ZSH-Specific Aliases
if [ -f $HOME/.zsh/config/aliases.zsh ]; then
    source $HOME/.zsh/config/aliases.zsh
else
    print "404: ~/.zsh/config/aliases.zsh not found."
fi
