#!/bin/bash

set -e


echo "Installing some important packages through apt";
sudo apt -y update \
  && sudo apt -y upgrade \
  && sudo apt install tmux curl wget 



for i in vim vimrc viminfo zshrc aliases functions tmux.conf gitignore_global;
do	
	echo "Installing your: $i";
	ln -sf ~/.dotfiles/$i ~/.$i
done
