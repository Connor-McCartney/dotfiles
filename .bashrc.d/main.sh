#!/usr/bin/bash

alias des="cd ~/Desktop"
alias v=nvim
alias ls="ls --color=auto"
alias l=ls

#normal/default green, directories aqua underlined, executables pink, .py orange
export LS_COLORS="no=32:di=4;96:ex=1;35:*.py=1;31"
export PS1="\[\e[0;35m\]\n[\w]\[\[\e[m\] \[\e[0;37m\]\n\$\[\e[m\] "

c() {
  cd "$1" && ls
}

s() {
	sage "$1" && rm "${1}.py"
}

# enable vi mode
##set -o vi
# fix vi mode breaking CTRL+L
##bind -m vi-insert "\C-l":clear-screen
