# shellcheck shell=sh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Set by MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Use Homebrew-installed Python
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Exports
  # export GUILE_LOAD_PATH="/usr/local/share/guile/site/3.0"
  # export GUILE_LOAD_COMPILED_PATH="/usr/local/lib/guile/3.0/site-ccache"
  # export GUILE_SYSTEM_EXTENSIONS_PATH="/usr/local/lib/guile/3.0/extensions"
  # export PATH="/usr/local/opt/openldap/bin:$PATH"
  # export PATH="/usr/local/opt/openldap/sbin:$PATH"

# Use Homebrew-installed curl
export PATH="/usr/local/opt/curl/bin:$PATH"
#For compilers to find curl you may need to set:
export LDFLAGS="-L/usr/local/opt/curl/lib"
export CPPFLAGS="-I/usr/local/opt/curl/include"
# For pkg-config to find curl you may need to set:
export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

# Use coreutils without "g" prefix
# Coreutils is a package of updated basic command line tools
PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"

# Use findutils without "g" prefix
# Findutils is a package of basic directory searching utilities
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Use gnu-sed without "g" prefix
# GNU-sed (stream editor) is a non-interactive command-line text editor
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Use gnu-tar without "g" prefix
# GNU-tar is another popular stream editor
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# FZF PATH
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi

path=( "${path[@]:#*Mono*}" )
path=( "${path[@]:#*Xamarin*}" )
path=( "${path[@]:#*dotnet*}" )
path=( "${path[@]:#*X11*}" )


# Add Ruby Version Manager to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$GEM_HOME/bin:$PATH"
# shellcheck source=/dev/null
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
