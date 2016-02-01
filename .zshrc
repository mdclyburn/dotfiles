# Help out TRAMP when it logs in.
if [[ $TERM == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
  unsetopt precmd
  unfunction preexec
  PS1='$ '
  return
fi

# Basic zsh Configuration
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# compinstall
zstyle :compinstall filename '/home/marshall/.zshrc'
autoload -Uz compinit
compinit

# Environment
PATH=~/bin:~/.gem/ruby/2.0.0/bin:$PATH
PS1='[%n %1~]%% '

PAGER=less

# Aliases
alias ocaml="ledit ocaml"
alias resource="source ~/.zshrc"
alias tmux='tmux -2'
