#!/usr/bin/bash

alias v=nvim
alias l=ls

#normal/default green, directories turquoise underlined, executables red bold, .py yellow
export LS_COLORS="no=32:di=4;96:ex=1;31:*.py=93"
export PS1="\[\e[0;35m\][\u@\h \W]\[\[\e[m\]\[\e[0;37m\]\$\[\e[m\] \[\e[32m\]"
