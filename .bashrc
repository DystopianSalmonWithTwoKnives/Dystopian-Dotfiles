# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# Custom aliases

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
