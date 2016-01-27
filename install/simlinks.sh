#!/bin/bash

for file in .zshrc .gitconfig .vim .vimrc .warprc
do
  ln -nfs ~/dotfiles/$file ~/$file
done
