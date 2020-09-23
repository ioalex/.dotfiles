# FZF Configuration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# Use FZF in Todoist CLI <github.com/sachaos/todoist>
source $(brew --prefix)/share/zsh/site-functions/_todoist_fzf
