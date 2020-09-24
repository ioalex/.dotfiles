if [ -f $BASHDIR/bash/core.bash ]; then
    # shellcheck source=home/.config/bash/core.bash
    source $BASHDIR/bash/core.bash
else
    echo "404: ~/.config/bash/bash/core.bash not found."
    echo "Quick! Take a look at your ~/.dotfiles!!!"
fi
