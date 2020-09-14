# XDG Base Directory Specification
# http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Set ZSH_CACHE_DIR to the path where cache files should be created
# This is needed to ensure the zsh_reload plugin works properly <github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/zsh_reload.plugin.zsh>
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"
fi
mkdir -p $ZSH_CACHE_DIR

export ZSH_COMPLETE="$ZSH_CACHE_DIR/zcompcache"
mkdir -p $ZSH_COMPLETE

export ZSH_DUMP="$ZSH_CACHE_DIR/zcompdump"
mkdir -p $ZSH_DUMP

export HISTORY_DIR="$HOME/.history"
mkdir -p $HISTORY_DIR
export ZSH_HISTORY="$HISTORY_DIR/.zsh_history"

# Set language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Path to zshrc configurations.
export ZSH="$HOME/.zsh"
export ZSH_CONFIG="$HOME/.zsh/config"
export ZSH_MISC="$HOME/.zsh/config/misc"

# Set Antibody Home Directory
export ANTIBODY_HOME=$HOME/Library/antibody
export ANTIBODY_PLUGINS=$HOME/.zsh_plugins.sh
export ANTIBODY_PLUGINS_TXT=$HOME/.zsh_plugins.txt

# Set Homebrew Directory
export HOMEBREW_FOLDER="$(brew --prefix)/share"

# Set Editor Defaults
export VEDITOR="code"
export EDITOR="nvim"

# Useful Exports
export ZSHRC=$HOME/.zshrc
export NVIM_PATH=$HOME/.config/nvim
export TMUX_CONFIG=$HOME/.tmux.conf
export DESKTOP=$HOME/Desktop
export PROJECTS=$HOME/Projects
export WEBDEV=$HOME/Projects/Web-Development
