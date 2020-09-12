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

# TODO: Modularise Configuration - Use the newly created ~/.zsh
# TODO: Copy functions from oh-my-zsh.sh

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Custom prompt style
DEFAULT_USER=$(whoami)

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Set language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Oh-my-zsh
# Moving on from oh-my-zsh as it slows down startup time (ᵟຶ︵ ᵟຶ)
# I can completely remove the following lines,
# however I want to keep it here in the odd chance I move back to oh-my-zsh.

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"
# Currently loading theme through Antibody
# ZSH_THEME="powerlevel10k/powerlevel10k"
# COMPLETION_WAITING_DOTS="true" # Display red dots whilst waiting for completion
# Source Oh My Zsh Framework
# source $ZSH/oh-my-zsh.sh

# Path to zshrc configurations.
export ZSH="$HOME/.zsh"

# Set ZSH_CACHE_DIR to the path where cache files should be created
# This is needed to ensure the zsh_reload plugin works properly <github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/zsh_reload.plugin.zsh>
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

# Theme - Powerlevel10k <github.com/romkatv/powerlevel10k>
# Powerlevel10k Configuration
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# History Setup
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTTIMEFORMAT="%T: "

setopt INC_APPEND_HISTORY # ZSH sessions append to the history, rather than replacing
setopt HIST_REDUCE_BLANKS # Remove superfluous blanks from history items
setopt HIST_FIND_NO_DUPS # Up Arrow / Down Arrow ignore duplicates
setopt HIST_IGNORE_DUPS # Consecutive duplicates do not get added to the history
setopt HIST_IGNORE_ALL_DUPS # Remove older duplicate entries from history
setopt SHARE_HISTORY # Share history between different instances of the shell

# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|pwd|exit|cd ..)"

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

# Enable 256 color to make auto-suggestions look nice
export TERM="xterm-256color"

# Set Editor Defaults
export VEDITOR="code"
export EDITOR="nvim"

# Antibody Plugin Manager
# Set Antibody Home Directory
export ANTIBODY_HOME=$HOME/Library/antibody
export ANTIBODY_PLUGINS=$HOME/.zsh_plugins.sh
export ANTIBODY_PLUGINS_TXT=$HOME/.zsh_plugins.txt

# Statically load plugins via Antibody
source $ANTIBODY_PLUGINS

# Alias Tips Plugin Configuration <github.com/djui/alias-tips>
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="💡: "
# export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1
# export ZSH_PLUGINS_ALIAS_TIPS_REVEAL_TEXT="💡: "

# Zsh-notify Plugin Configuration <github.com/marzocchi/zsh-notify>
zstyle ':notify:*' error-title "Command failed (in #{time_elapsed} seconds)"
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"


# Homebrew
# Set Homebrew Directory
HOMEBREW_FOLDER="$(brew --prefix)/share"

# Prevent Homebrew from reporting
export HOMEBREW_NO_ANALYTICS=1

# Source Homebrew zsh Plugins
source $HOMEBREW_FOLDER/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOMEBREW_FOLDER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_FOLDER/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"

# Provides additional completions not available in Zsh yet
    if type brew &>/dev/null; then
     FPATH=$HOMEBREW_FOLDER/zsh-completions:$FPATH

     autoload -Uz compinit
     compinit
    fi

# Run for every Terminal window
# Python 3.8 symlink
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# iTerm2 Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Speed up zsh start time by lazy loading rbenv
 # shellcheck disable=SC2039
 if rbenv &>/dev/null; then
  eval "$(rbenv init -)"
 fi

 rbenv() {
  eval "$(command rbenv init -)"
  rbenv "$@"
 }

# Enable Homebrew's completions <docs.brew.sh/Shell-Completion>
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add Ruby Version Manager to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Tab Complete for Colorls
source $(dirname $(gem which colorls))/tab_complete.sh

# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# Use FZF in Todoist CLI <github.com/sachaos/todoist>
source $(brew --prefix)/share/zsh/site-functions/_todoist_fzf

# Exports
  export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
  export PATH="/usr/local/opt/openldap/bin:$PATH"
  export PATH="/usr/local/opt/openldap/sbin:$PATH"

# Functions

# Tab title
precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}


# Useful Exports
export ZSH_CONFIG=$HOME/.zshrc
export NVIM_PATH=$HOME/.config/nvim
export TMUX_CONFIG=$HOME/.tmux.conf
export DESKTOP=$HOME/Desktop
export PROJECTS=$HOME/Projects
export WEBDEV=$HOME/Projects/Web-Development

# Automatically start tmux if:
# (1) tmux exists on the system,
# (2) we're in an interactive shell, and
# (3) we are not already in tux
# Source: <https://cutt.ly/EfWTG2b>
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi

# Use coreutils without "g" pefix
# Coreutils is a package of updated basic command line tools
PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

# Use findutils without "g" pefix
# Findutils is a package of basic directory searching utilities
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Use gnu-sed without "g" prefix
# GNU-sed (stream editor) is a non-interactive command-line text editor
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Use gnu-tar without "g" prefix
# GNU-tar is another popular stream editor
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Aliases
if [ -f $HOME/.zsh/aliases ]; then
    source $HOME/.zsh/aliases
else
    print "404: ~/.zsh/aliases not found."
fi
