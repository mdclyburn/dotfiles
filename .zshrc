# Basic zsh Configuration
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# compinstall
zstyle :compinstall filename '/home/marshall/.zshrc'
autoload -Uz compinit
compinit

##### Linux Settings #####
if test "$(uname -s)" = "Linux"
then
	PATH=$PATH:~/bin
	PS1='[%n@%M %1~]$ '

	alias mntarchives="sudo mount -t cifs //hououin/Archives /mnt/archives -o user=marshall"
	alias mntbackup="sudo mount -t cifs //hououin/Backup /mnt/backup -o user=marshall"
	alias mntmusic="sudo mount -t cifs //hououin/Music /mnt/music -o user=marshall"
	alias mocp="mocp -m /mnt/music -T marsh -C ~/.moc/config"
	alias reconfig="vim ~/.config/awesome/rc.lua"
	alias retheme="vim ~/.config/awesome/theme/theme.lua"
	alias rex="xrdb -merge ~/.Xresources && exit"
	alias tmux="tmux -2"

	# Arch specific things
	if test "$(uname -r | grep -o ARCH)" = "ARCH"
	then
		alias tlmgr="tllocalmgr"
	fi

	# Gentoo specific things
	if test "$(uname -r | grep -o gentoo)" = "gentoo"
	then
		alias newconfigs="printf 'New config. files:\\n' && sudo find /etc/ -name '._cfg????_*'"
	fi
fi
##########################

##### OS X Settings #####
if test "$(uname -s)" = "Darwin"
then
	PATH=~/bin:$PATH
	PROMPT="[%n@$(scutil --get LocalHostName) %1~]\$ "
	autoload -U promptinit
	promptinit
fi
#########################

##### Universal Settings #####
alias resource="source ~/.zshrc"
