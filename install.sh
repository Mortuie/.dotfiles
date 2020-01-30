#!/bin/bash

set -e


echo "Installing some important packages through apt";
sudo apt -y update \
  && sudo apt -y upgrade \
  && sudo apt -y install tmux curl wget zsh vim zlib1g-dev libffi-dev \
  libssl-dev libreadline-dev bzip2 make build-essential libsqlite3-dev \
  xz-utils apt-transport-https ca-certificates software-properties-common


for i in vim vimrc viminfo zshrc aliases functions tmux.conf gitignore_global;
do	
	echo "Installing your: $i";
	ln -sf ~/.dotfiles/$i ~/.$i
done


chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm -rf ~/.zshrc

git clone https://github.com/pyenv/pyenv.git ~/.pyenv

echo "Manual changes needed for KDE - Workspaces";
echo "Please relog into your account for the full changes to take affect.";
