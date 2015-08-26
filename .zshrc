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

##### DragonFly BSD #####
if test "$(uname -s)" = "DragonFly"
then
	PS1='[%n@%M %1~]$ '
fi

##### OS X Settings #####
if test "$(uname -s)" = "Darwin"
then
	PATH=~/bin:$PATH

	# Prompt setup.
	git_on() {
		PROMPT='[%n@%M %1~$(mprompt " %b")]$ '
	}

	git_off() {
		PROMPT='[%n@%M %1~]$ '
	}
	

	if [ -d ~/.zsh-git-prompt ]
	then
		source ~/.zsh-git-prompt/zshrc.sh
	fi

	# Default to not printing the Git info.
	git_off
	
	autoload -U promptinit
	promptinit
fi
#########################

##### Universal Settings #####
alias emacs="emacs -nw"
alias resource="source ~/.zshrc"
