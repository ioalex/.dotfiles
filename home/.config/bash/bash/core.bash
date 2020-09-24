# Sane Defaults
# shellcheck source=home/.config/bash/bash/config/sensible.bash
if [ -f "$BASH_DIR/bash/config/sensible.bash" ]; then
   source "$BASH_DIR/bash/config/sensible.bash"
fi

# History Settings
# shellcheck source=home/.config/bash/bash/config/history.bash
if [ -f "$BASH_DIR/bash/config/history.bash" ]; then
    source "$BASH_DIR/bash/config/history.bash"
else
    print "404: ~/.config/bash/config/history.bash not found."
fi

# Miscellaneous
typeset -a misc

misc+=("${BASH_MISC}/brew.bash")
misc+=("${BASH_MISC}/colorls.bash")
misc+=("${BASH_MISC}/completion.bash")
misc+=("${BASH_MISC}/fzf.bash")
misc+=("${BASH_MISC}/nvm.bash")

for file in "${misc[@]}"; do
  if [[ -a "$file" ]]; then
    # shellcheck source=/dev/null
    source "$file"
  fi
done

# Bash-Specific Aliases
# shellcheck source=home/.config/bash/bash/config/aliases.bash
if [ -f "$BASH_DIR/bash/config/aliases.bash" ]; then
    source "$BASH_DIR/bash/config/aliases.bash"
else
    print "404: ~/.config/bash/config/aliases.bash not found."
fi

# Prompt Settings
# Starship must be added to the end of the file
# shellcheck source=home/.config/bash/bash/config/prompt.bash
if [ -f "$BASH_DIR/bash/config/prompt.bash" ]; then
    source "$BASH_DIR/bash/config/prompt.bash"
else
    print "404: ~/.config/bash/config/prompt.bash not found."
fi
