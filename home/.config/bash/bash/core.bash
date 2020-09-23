export HISTORY_DIR="$XDG_CACHE_HOME/history"
mkdir -p "$HISTORY_DIR"
export BASH_HISTORY="$HISTORY_DIR/.bash_history"

# Set History file location
export HISTFILE="$BASH_HISTORY"

# shellcheck source=home/.config/bash/bash/config/sensible.bash
if [ -f "$BASHDIR/bash/config/sensible.bash" ]; then
   source "$BASHDIR/bash/config/sensible.bash"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# shellcheck source=home/.fzf.bash
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export STARSHIP_CONFIG=~/.config/starship/starship.toml

eval "$(starship init bash)"

# Global Aliases
for f in "$HOME/.aliases/"*; do
# shellcheck source=home/.aliases/*
   source "$f"
done

# Bash-Specific Aliases
# shellcheck source=home/.config/bash/bash/config/aliases.bash
if [ -f "$BASHDIR/bash/config/aliases.bash" ]; then
    source "$BASHDIR/bash/config/aliases.bash"
else
    print "404: ~/.config/bash/config/aliases.bash not found."
fi
