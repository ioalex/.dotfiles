# Backup Zsh configuration to iCloud

backup() {
  cd "$HOME"
  cp ".zshenv" $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Backup/zsh/
  cp -r ".dotfiles/home/.config/zsh/." $HOME/Library/Mobile\ Documents/com~apple~CloudDocs/Backup/zsh/
  echo "\u2713: ZSH Configuration has been backed up to iCloud Drive"
}
