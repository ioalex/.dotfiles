# Homebrew
# Set Homebrew Directory
export HOMEBREW_FOLDER="$(brew --prefix)/share"

# Prevent Homebrew from reporting
export HOMEBREW_NO_ANALYTICS=1

# Source Homebrew zsh Plugins
source $HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_FOLDER/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh


# Provides additional completions not available in Zsh yet
    if type brew &>/dev/null; then
     FPATH=$HOMEBREW_FOLDER/zsh-completions:$FPATH

     autoload -Uz compinit
     compinit
    fi
