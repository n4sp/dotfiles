#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias i='nsxiv'
alias e='emacs'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

PATH=$PATH:~/.local/bin
PS1='[\u@\h \W]\$ '
