# Source: <github.com/thoughtbot/dotfiles/blob/master/zsh/functions/g>
# No arguments: `git status`
# With arguments: acts like `git`

g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}
