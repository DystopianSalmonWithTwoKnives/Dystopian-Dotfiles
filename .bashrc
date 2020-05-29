# .bashrc

#General settings
export LANG="en_CA.UTF-8"
export LC_ALL="en_CA.UTF-8"
export LANGUAGE="en_CA.UTF-8"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"

# Color definition
export white="\[\e[37m\]"
export grey="\[\e[38;5;247m\]"
export orange="\[\e[38;5;166m\]"
export yellow="\[\e[38;5;190m\]"
export red="\[\e[38;5;124m\]"
export green="\[\3[38;5;082m\]"

# Command prompt
export PS1="$white[ $grey\A$white ] [ $orange\u$white @ $yellow\h$white : $grey\w$white ] $red\$ $white"

## Aliases for package management
alias xu="sudo xbps-install -Suv"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"

## Aliases for editor
alias n="nvim"
alias s="surf"
alias so="surf & disown -h %1 && exit"
alias anki="/opt/anki/runanki & disown -h %1 && exit"

## Aliases for directories
alias sc="cd /home/stoz/.local/bin/"

## Aliases for battery
alias batinfo="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias wbatinfo="watch upower -i /org/freedesktop/UPower/devices/battery_BAT0"

source $HOME/.profile
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/stoz/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/stoz/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/stoz/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/stoz/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

