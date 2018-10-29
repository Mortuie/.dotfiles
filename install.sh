# removing all the old dotfiles on the local machine..
rm -rf ~/.vim ~/.vimrc ~/.viminfo ~/.zshrc ~/.aliases ~/.tmux.conf


# installing my dotfiles
ln -sv "~/.dotfiles/.vimrc" ~
ln -sv "~/.dotfiles/.vim" ~
ln -sv "~/.dotfiles/.viminfo" ~
ln -sv "~/.dotfiles/.zshrc" ~
ln -sv "~/.dotfiles/.aliases" ~
ln -sv "~/.dotfiles/.tmux.conf" ~ 
