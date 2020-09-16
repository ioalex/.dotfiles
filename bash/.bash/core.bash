export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionif [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

export HISTORY_DIR="$HOME/.history"
mkdir -p $HISTORY_DIR
export BASH_HISTORY="$HISTORY_DIR/.bash_history"

# Set History file location
export HISTFILE=$BASH_HISTORY

if [ -f ~/.bash/sensible.bash ]; then
   source ~/.bash/sensible.bash
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export STARSHIP_CONFIG=~/.config/starship

eval "$(starship init bash)"

# Global Aliases
for f in $HOME/.aliases/*; do
   source $f
done

# Bash-Specific Aliases
if [ -f $HOME/.bash/config/aliases.bash ]; then
    source $HOME/.bash/config/aliases.bash
else
    print "404: ~/.bash/config/aliases.bash not found."
fi
