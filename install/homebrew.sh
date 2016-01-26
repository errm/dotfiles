#!/bin/bash
set -e

if [ -x "$(command -v brew)" ]; then
  brew update
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew install \
  corectl \
  git \
  rbenv\
  ruby-build\
  tmux \
  vim \
  zsh  \
  zsh-completions \
