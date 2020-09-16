# ZSH-Specific Aliases

# Commonly Used

alias reload="dbxcli put $HOME/.zshrc dotfiles/.zshrc && src"

# Maintenance
alias plugins="antibody update && antibody bundle < $ANTIBODY_PLUGINS_TXT > $ANTIBODY_PLUGINS"

# Configuration
alias config="nvim $HOME/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
