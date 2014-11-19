#
# ~/.bashrc
#

# If not running interactively, don't do anything

PATH=~/bin:$PATH

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias tlmgr='tllocalmgr'
PS1='[\u@\h \W]\$ '
