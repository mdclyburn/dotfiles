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

PATH=$PATH:~/bin

PS1='[%n@%M %1~]$ '

alias mntarchives="sudo mount -t cifs //hououin/Archives /mnt/archives -o user=marshall"
alias mntmusic="sudo mount -t cifs //hououin/Music /mnt/music -o user=marshall"
alias mocp="mocp -m /mnt/music -T marsh -C ~/.moc/config"
alias reconfig="vim ~/.config/awesome/rc.lua"
alias resource="source ~/.zshrc"
alias retheme="vim ~/.config/awesome/theme/theme.lua"
alias rex="xrdb -merge ~/.Xresources"
alias tlmgr="tllocalmgr"
alias tmux="tmux -2"

# Gentoo specific things
if test $(uname -r | grep -o gentoo) = "gentoo"
then
	alias newconfigs="printf 'New config. files:\\n' && sudo find /etc/ -name '._cfg????_*'"
fi
