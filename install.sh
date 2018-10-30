#!/bin/bash

set -e


for i in vim vimrc viminfo zshrc aliases tmux.conf;
do	
	echo "Installing your: $i";
	ln -sf ~/.dotfiles/$i ~/.$i
done
