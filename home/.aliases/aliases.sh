# Global Aliases

alias svn="svn --config-dir "$XDG_CONFIG_HOME"/subversion"

# Commonly Used
alias please=sudo
alias pls=sudo
alias o=open
alias cat=bat
alias rm=trash
alias mkdir="mkdir -pv"
alias ls=colorls
alias lc="colorls -lA --sd"
alias r=ranger
alias rn=rename
# alias find=fd
alias c=clear

alias ...="cd ../.."
alias ....="cd ../../.."

alias b=brew
alias chrome=chrome-cli
alias wifi=wifi-password
alias dbx=dbxcli
alias grep=rg --color=auto
# alias pip=pip3
# alias python=python3
alias wtf=apropos # list of commands apropos to the term you give it
eval $(thefuck --alias fuck)
eval $(thefuck --alias FUCK) # For Mondays!
alias ll="last -1 $(whoami)"    # Prints the last login information - useful as .hushlogin completely suppresses the last login messages

# Editors
alias vim=nvim
alias v=nvim
alias n=nvim
alias m=micro
# alias nano=micro # Use Micro in place of Nano

# Tmux
# alias t=tmux
alias q=exit
alias "treload"="tmux source $TMUX_CONFIG"
alias t="tmux attach || tmux new-session\; split-window -h" # Attaches tmux to the last session; creates a new session (with a panel split into left and right) if none exists.
alias tl="tmux list-sessions" # Lists all ongoing sessions
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"

# Git
# alias "git clone"="hub clone"
alias g=git

# NPM
alias "npmg"="npm list -g --depth=0"

# NVM
# alias "nvm install latest"="nvm install node"

# Commands
alias help="source $HOME/.config/help/help.sh"
alias keys="source $HOME/.config/rebindkeys/rebindkey.sh"
alias todo="todoist list --filter 'today'"

# Maintenance
alias doctor="cleanmymac update && cleanmymac"
alias shells="cat /etc/shells"

# Configuration
alias nvimconfig="nvim $HOME/.config/nvim"
alias tmuxconf="nvim $HOME/.tmux.conf"

# Directory Shortcuts
alias dotfiles="cd $DOTFILES"
alias projects="cd $PROJECTS"
alias webdev="cd $WEBDEV"

# Backup Neovim
alias backupvim="echo 'Backing up Neovim configuration...'
cp $HOME/.config/nvim/init.vim $HOME/Dropbox/dotfiles/nvim/
cp $HOME/.config/nvim/coc-settings.json $HOME/Dropbox/dotfiles/nvim/
cp -R $HOME/.config/nvim/core/ $HOME/Dropbox/dotfiles/nvim/core/
cp -R $HOME/.config/nvim/lua/ $HOME/Dropbox/dotfiles/nvim/lua/
cp -R $HOME/.config/nvim/plugins/ $HOME/Dropbox/dotfiles/nvim/plugins/
cp -R $HOME/.config/nvim/themes/ $HOME/Dropbox/dotfiles/nvim/themes/
echo 'Neovim configuration has been backed up to Dropbox.'"

# Delete all .DS_Store in current directory including child directories
alias dstore="find . -name ".DS_Store" -delete"
