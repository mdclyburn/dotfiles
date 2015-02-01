Configuration Files
===================

A bunch of configuration files I use.

Setup
-----
If, by chance, you wanted to use these files, I have authored a small script to facilitate the installation of the files.
To begin, clone the repository into a directory in your home folder.
Prefixing the directory name with a '.' would probably be preferable to keep it hidden under normal circumstances.
I name the repository `.files`.
In the repository, there will be a script, `install.sh`.
This script will create symlinks to the files/directories in your home folder.
If there is already a file with the same name in place, it will have `.backup` appended to the name and then the symlink will be created, destroying none of your current configuration files.
