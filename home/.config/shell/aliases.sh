# shellcheck shell=sh

# Global Aliases

alias svn='svn --config-dir $XDG_CONFIG_HOME/subversion'

# Commonly Used
alias please=sudo
alias pls=sudo
alias o=open
alias cat=bat
alias rm=trash
alias mkdir="mkdir -pv"
alias ls="colorls --color=auto"
alias lc="colorls -lA --sd --color=auto"
alias ld="colorls -lda --sd --color=auto"
alias ll="colorls -lha --sd --color=auto"
alias r=ranger
alias rn=rename
# alias find=fd
alias c=clear

alias histg="history | grep"

alias ...="cd ../.."
alias ....="cd ../../.."

alias b=brew
alias chrome=chrome-cli
alias wifi=wifi-password
alias dbx=dbxcli
alias grep=rg --color=auto
alias wget="wget -c"
alias top="htop"
# alias pip=pip3
# alias python=python3
alias wtf=apropos # list of commands apropos to the term you give it
eval "$(thefuck --alias fuck)"
eval "$(thefuck --alias FUCK)" # For Mondays!
alias lastlogin='last -1 $(whoami)'    # Prints the last login information - useful as .hushlogin completely suppresses the last login messages

# Editors
alias vim=nvim
alias v=nvim
alias n=nvim
alias m=micro
# alias nano=micro # Use Micro in place of Nano

# Tmux
# alias t=tmux
alias q=exit
alias treload='tmux source $TMUX_CONFIG'
alias t="tmux attach || tmux new-session\; split-window -h" # Attaches tmux to the last session; creates a new session (with a panel split into left and right) if none exists.
alias tl="tmux list-sessions" # Lists all ongoing sessions
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

# Git
# Hub can be safely aliased as git
alias git="hub"

# NPM
alias npmg="npm list -g --depth=0"

# NVM
# alias "nvm install latest"="nvm install node"

# Commands
alias help='source $HOME/.config/help/help.sh'
alias keys='source $HOME/.config/rebindkeys/rebindkey.sh'
alias todo="todoist list --filter 'today'"

# Maintenance
alias doctor="cleanmymac update && cleanmymac"
alias shells="cat /etc/shells"

# Configuration
alias nvimconfig='nvim $HOME/.config/nvim'
alias tmuxconf='nvim $HOME/.tmux.conf'

# Directory Shortcuts
alias dotfiles='cd $DOTFILES'
alias projects='cd $PROJECTS'
alias webdev='cd $WEBDEV'
