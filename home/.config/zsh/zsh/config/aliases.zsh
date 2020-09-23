# ZSH-Specific Aliases

# Commonly Used

alias reload="dbxcli put $DOTFILES/zsh/dot-zshrc dotfiles/.zshrc && src"

# Maintenance
alias plugins="antibody update && antibody bundle < $ANTIBODY_PLUGINS_TXT > $ANTIBODY_PLUGINS"

# Configuration
alias config="nvim $ZDOTDIR/.zshrc"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
