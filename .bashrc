# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Command prompt
export PS1="[\A | \u@\h : \w] "


# Custom aliases
alias ls='ls --color=auto'

## Aliases for package management
alias xu="sudo xbps-install -Suv"
alias xi="sudo xbps-install"
alias xr="sudo xbps-remove"

## Aliases for editor
alias n="nvim"
alias s="surf"
alias so="surf & disown -h %1 && exit"

## Aliases for directories
alias sc="cd /home/stoz/.local/bin/"

source $HOME/.profile
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"
