#!/bin/bash

for file in .zshrc .zshenv .gitconfig .vim .vimrc .warprc
do
  ln -nfs ~/dotfiles/$file ~/$file
done
