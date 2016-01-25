#!/bin/bash

set -e

cd `dirname $0`

source "install/homebrew.sh"
source "install/caskroom.sh"

git submodule init
git submodule update

./fonts/install.sh

ln -nfs ~/dotfiles/.zshrc ~/.zshrc
ln -nfs ~/dotfiles/.gitconfig ~/.gitconfig
ln -nfs ~/dotfiles/.vim ~/.vim
ln -nfs ~/dotfiles/.vimrc ~/.vimrc

chsh -s /bin/zsh
