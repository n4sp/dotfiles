#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR="emacs"
export MPD_PORT=6038
export MPD_HOST=/run/user/1000/mpd/socket

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'
alias i='nsxiv'
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
gettrack() { yt-dlp -x --embed-metadata --embed-thumbnail -o "%(title)s.%(ext)s" $1 ; }
e() { "$EDITOR" $1 & }
pdf() { zathura "$1" & }

PATH=$PATH:~/.local/bin
PS1='[\u@\h \W]\$ '
