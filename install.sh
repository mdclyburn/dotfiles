#!/bin/bash

for file in $(ls -a | grep "^\.[A-Za-z][A-Za-z]*")
do
    # Don't link '.git'.
    if [ "$file" = ".git" ]
    then
	continue
    fi

	# Backup already existing files.
	if [ -e ~/${file} ]
	then
		printf "Backing up ${file}.\n"
		mv ~/${file} ~/${file}.backup
	fi

	# Link to file in this directory.
	ln -s $(basename $(pwd))/$file ../
	printf "Linked %s\n" "$file"
done

exit 0
