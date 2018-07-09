#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Custom Environment Vars
export TERMINAL=urxvt
# Use VSCode if display var is set; else vim
export EDITOR="$(if [[ -n $DISPLAY ]]; then echo 'code'; else echo 'vim'; fi)"

# Aliases
alias ll='ls -l'
alias la='ls -al'

# Export XDG config location for WMs
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME

# Point to local scripts
export PATH="$HOME/bin:$PATH"
