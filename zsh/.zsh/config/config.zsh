# General Settings

setopt autocd		# Automatically cd into typed directory.

# Enable 256 color to make auto-suggestions look nice
export TERM="xterm-256color"

# Set ZSH_CACHE_DIR to the path where cache files should be created
# This is needed to ensure the zsh_reload plugin works properly <github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh_reload/zsh_reload.plugin.zsh>
if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi
