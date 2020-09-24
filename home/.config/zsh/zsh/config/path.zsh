typeset -U PATH path

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

# Run for every Terminal window
# Python 3.8 symlink
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Exports
  # export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  # export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  # export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
  # export PATH="/usr/local/opt/openldap/bin:$PATH"
  # export PATH="/usr/local/opt/openldap/sbin:$PATH"

# Use coreutils without "g" pefix
# Coreutils is a package of updated basic command line tools
PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

# Use findutils without "g" pefix
# Findutils is a package of basic directory searching utilities
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Use gnu-sed without "g" prefix
# GNU-sed (stream editor) is a non-interactive command-line text editor
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Use gnu-tar without "g" prefix
# GNU-tar is another popular stream editor
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# Add Ruby Version Manager to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
