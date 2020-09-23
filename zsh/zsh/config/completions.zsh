# Autocompletion
# Enable Autocompletion
autoload -Uz compinit;
zstyle ':completion::complete:*' cache-path $ZSH_COMPLETE
compinit -d $ZSH_DUMP

# Speed up zsh compinit by only checking cache once a day
typeset -i updated_at=$(date +"%j" -r $ZSH_COMPLETE 2>/dev/null || stat -f "%Sm" -t "%j" $ZSH_COMPLETE 2>/dev/null)
if [ $(date +"%j") != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# _zpcompinit_custom() {
#   setopt extendedglob local_options
#   autoload -Uz compinit
#   local zcd=$ZSH_DUMP/.zcompdump
#   local zcdc="$zcd.zwc"
#   # Compile the completion dump to increase startup speed, if dump is newer or doesn't exist,
#   # in the background as this is doesn't affect the current session
#   if [[ -f "$zcd"(#qN.m+1) ]]; then
#         compinit -i -d "$zcd"
#         { rm -f "$zcdc" && zcompile "$zcd" } &!
#   else
#         compinit -C -d "$zcd"
#         { [[ ! -f "$zcdc" || "$zcd" -nt "$zcdc" ]] && rm -f "$zcdc" && zcompile "$zcd" } &!
#   fi
# }

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
