# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# shellcheck source=/dev/null
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

if [ -f "$ZSHCONFIG/core.zsh" ]; then
    source "$ZSHCONFIG/core.zsh"
else
    print "404: ~/.config/zsh/zsh/core.zsh not found."
    print "Quick! Take a look at your ~/.dotfiles!!!"
fi
