# If not running interactively, don't do anything
[[ $- != *i*]] && return

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
        for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                        . "$rc"
                fi
        done
fi
unset rc

[[ "$PWD" == "/" ]] && cd ~
