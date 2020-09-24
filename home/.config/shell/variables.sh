# Set environment variables

# Set language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Set Editor Defaults
export VEDITOR="code"
export EDITOR="nvim"

# Use XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

# Shells
# ZSH
# Set ZSH_CACHE_DIR to the path where cache files should be created
# This is needed to ensure the zsh_reload plugin works properly <github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/zsh_reload.plugin.zsh>
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="${XDG_CACHE_HOME:="$HOME/.cache"}/zsh"
fi
mkdir -p "$ZSH_CACHE_DIR"

# Paths to zshrc configuration
export ZDOTDIR=${XDG_CONFIG_HOME:="$HOME/.config"}/zsh
mkdir -p "$ZDOTDIR"
export ZSH_ZSH=${ZDOTDIR:="$HOME/.config/zsh"}/zsh
export ZSH_CONFIG=${ZSH_ZSH:="$HOME/.config/zsh/zsh"}/config
export ZSH_MISC=${ZSH_CONFIG:="$HOME/.config/zsh/zsh/config"}/misc
export ZSH_COMPLETIONS=${ZSH_MISC:="$HOME/.config/zsh/zsh/config/misc"}/completions
export ZSH_FUNCTIONS=${ZSH_CONFIG:="$HOME/.config/zsh/zsh/config"}/functions

# Bash
export BASH_DIR=${XDG_CONFIG_HOME:="$HOME/.config"}/bash
mkdir -p "$BASH_DIR"
export BASH_BASH=${BASH_DIR:="$HOME/.config/bash"}/bash
export BASH_CONFIG=${BASH_BASH:="$HOME/.config/bash/bash"}/config
export BASH_MISC=${BASH_CONFIG:="$HOME/.config/bash/bash/config"}/misc

# Shell History Variables
export HISTORY_DIR="${XDG_CACHE_HOME:="$HOME/.cache"}/history"
mkdir -p "$HISTORY_DIR"
export ZSH_HISTORY="$HISTORY_DIR/.zsh_history"
export BASH_HISTORY="$HISTORY_DIR/.bash_history"

# Applications

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
mkdir -p "$NVM_DIR"

# Tmux
export TMUXDIR=$XDG_CONFIG_HOME/tmux
mkdir -p "$TMUXDIR"

# Antibody
export ANTIBODY_HOME=$HOME/Library/antibody
export ANTIBODY_PLUGINS=$ZDOTDIR/.zsh_plugins.sh
export ANTIBODY_PLUGINS_TXT=$ZDOTDIR/.zsh_plugins.txt

# Ripgrep
export RIPGREP_DIR="$XDG_CONFIG_HOME/ripgrep"
mkdir -p "$RIPGREP_DIR"
export RIPGREP_CONFIG_PATH="$RIPGREP_DIR/ripgreprc"

# Starship Prompt
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Misc.
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
mkdir -p "GOPATH"
