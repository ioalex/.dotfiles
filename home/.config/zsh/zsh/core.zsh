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


if [ -f $ZSHCONFIG/config/path.zsh ]; then
    source $ZSHCONFIG/config/path.zsh
else
    print "404: ~/.config/zsh/zsh/config/path.zsh not found."
fi

if [ -f $ZSHCONFIG/config/prompt.zsh ]; then
    source $ZSHCONFIG/config/prompt.zsh
else
    print "404: ~/.config/zsh/zsh/config/prompt.zsh not found."
fi

if [ -f $ZSHCONFIG/config/oh-my-zsh.zsh ]; then
    source $ZSHCONFIG/config/oh-my-zsh.zsh
else
    print "404: ~/.config/zsh/zsh/config/oh-my-zsh.zsh not found."
fi

if [ -f $ZSHCONFIG/config/config.zsh ]; then
    source $ZSHCONFIG/config/config.zsh
else
    print "404: ~/.config/zsh/zsh/config/config.zsh not found."
fi

if [ -f $ZSHCONFIG/config/history.zsh ]; then
    source $ZSHCONFIG/config/history.zsh
else
    print "404: ~/.config/zsh/zsh/config/history.zsh not found."
fi

if [ -f $ZSHCONFIG/config/completions.zsh ]; then
    source $ZSHCONFIG/config/completions.zsh
else
    print "404: ~/.config/zsh/zsh/config/completions.zsh not found."
fi

if [ -f $ZSHCONFIG/config/plugins/antibody.zsh ]; then
    source $ZSHCONFIG/config/plugins/antibody.zsh
else
    print "404: ~/.config/zsh/zsh/config/plugins/antibody.zsh not found."
fi

if [ -f $ZSHCONFIG/config/plugins/brew.zsh ]; then
    source $ZSHCONFIG/config/plugins/brew.zsh
else
    print "404: ~/.config/zsh/zsh/config/plugins/brew.zsh not found."
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
for f in ${ZSH_FUNCTIONS}/*; do
   source $f
done

# Other completions
fpath+="${ZSH_COMPLETIONS}"

# Global Aliases
for f in $HOME/.aliases/*; do
   source $f
done

# ZSH-Specific Aliases
if [ -f $ZSHCONFIG/config/aliases.zsh ]; then
    source $ZSHCONFIG/config/aliases.zsh
else
    print "404: ~/.config/zsh/zsh/config/aliases.zsh not found."
fi
