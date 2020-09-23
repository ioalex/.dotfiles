# Antibody Plugin Manager

# Statically load plugins via Antibody
source $ANTIBODY_PLUGINS

# Alias Tips Plugin Configuration <github.com/djui/alias-tips>
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="💡: "
# export ZSH_PLUGINS_ALIAS_TIPS_REVEAL=1
# export ZSH_PLUGINS_ALIAS_TIPS_REVEAL_TEXT="💡: "

# Zsh-notify Plugin Configuration <github.com/marzocchi/zsh-notify>
zstyle ':notify:*' error-title "Command failed (in #{time_elapsed} seconds)"
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"
