# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Custom aliases
alias ls="ls --color=auto"

# Command prompt
export PS1="\[\e[37m[\] \e[38;5;247m\[\A \e[37m\]][ \e[38;5;166m\[\u\e[37m\[ @ \e[38;5;190m\[\h\e[37m\[ : \e[38;5;247m\[\w\e[37m\] ]\[\e[38;5;124m\]\$\[\e[37m\] "


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
alias fuck="sudo !!"
