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

# General Settings
if [ -f $ZSH_ZSH/config/general.zsh ]; then
    source $ZSH_ZSH/config/general.zsh
else
    print "404: ~/.config/zsh/zsh/config/general.zsh not found."
fi

# Prompt Configuration
if [ -f $ZSH_ZSH/config/prompt.zsh ]; then
    source $ZSH_ZSH/config/prompt.zsh
else
    print "404: ~/.config/zsh/zsh/config/prompt.zsh not found."
fi

# Oh-my-zsh
# if [ -f $ZSH_ZSH/config/oh-my-zsh.zsh ]; then
#     source $ZSH_ZSH/config/oh-my-zsh.zsh
# else
#     print "404: ~/.config/zsh/zsh/config/oh-my-zsh.zsh not found."
# fi

# History Settings
if [ -f $ZSH_ZSH/config/history.zsh ]; then
    source $ZSH_ZSH/config/history.zsh
else
    print "404: ~/.config/zsh/zsh/config/history.zsh not found."
fi

# Completions
if [ -f $ZSH_ZSH/config/completions.zsh ]; then
    source $ZSH_ZSH/config/completions.zsh
else
    print "404: ~/.config/zsh/zsh/config/completions.zsh not found."
fi

# Plugin Manager
if [ -f $ZSH_ZSH/config/plugins/antibody.zsh ]; then
    source $ZSH_ZSH/config/plugins/antibody.zsh
else
    print "404: ~/.config/zsh/zsh/config/plugins/antibody.zsh not found."
fi

# Homebrew Plugins
if [ -f $ZSH_ZSH/config/plugins/brew.zsh ]; then
    source $ZSH_ZSH/config/plugins/brew.zsh
else
    print "404: ~/.config/zsh/zsh/config/plugins/brew.zsh not found."
fi

# Miscellaneous
typeset -a misc

# misc+="${ZSH_MISC}/tmux.zsh"
misc+=("${ZSH_MISC}/nvm.zsh")
misc+=("${ZSH_MISC}/fzf.zsh")
misc+=("${ZSH_MISC}/colorls.zsh")
misc+=("${ZSH_MISC}/iterm2.zsh")

for file in "${misc[@]}"; do
  if [[ -a "$file" ]]; then
    # shellcheck source=/dev/null
    source "$file"
  fi
done

# Other completions
fpath+="${ZSH_COMPLETIONS}"

# ZSH-Specific Functions
if [ -z "${ZSH_FUNCTIONS}" ]; then
   echo "No functions available."
else
  for f in ${ZSH_FUNCTIONS}/*; do
    source $f
  done
fi

# ZSH-Specific Aliases
if [ -f $ZSH_ZSH/config/aliases.zsh ]; then
    source $ZSH_ZSH/config/aliases.zsh
else
    print "404: ~/.config/zsh/zsh/config/aliases.zsh not found."
fi
