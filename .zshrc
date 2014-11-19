# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marshall/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PS1='[%n@%M %1~]$ '

alias giveme="sudo pacman -S"
alias mntmusic="sudo mount -t cifs //hououin/Music /mnt/music -o user=marshall"
alias mocp="mocp -m /mnt/music -T marsh -C ~/.moc/config"
alias reconfig="vim .config/awesome/rc.lua"
alias resource="source ~/.zshrc"
alias retheme="vim .config/awesome/theme/theme.lua"
alias tlmgr="tllocalmgr"
alias tmux="tmux -2"
