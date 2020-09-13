# Autocompletion
# Enable Autocompletion
autoload -Uz compinit;

# Speed up zsh compinit by only checking cache once a day
typeset -i updated_at=$(date +"%j" -r ~/.zcompdump 2>/dev/null || stat -f "%Sm" -t "%j" ~/.zcompdump 2>/dev/null)
if [ $(date +"%j") != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Load complist module
# Provides menu list for select completion results
zmodload -i zsh/complist

# Autocompletion menu
setopt AUTO_LIST # Automatically list choices on ambiguous completion
setopt AUTO_MENU # Automatically use menu completion
setopt ALWAYS_TO_END # Move cursor to end if word had one match

# Improve autocompletion style
zstyle ':completion:*' menu select # Select completions with arrow keys
zstyle ':completion:*' group-name '' # Group results by category
zstyle ':completion:::::' completer _expand _complete _ignored _approximate # Enable approximate matches for completion
