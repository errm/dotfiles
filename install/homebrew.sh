#!/bin/bash
set -e

if [ -x "$(command -v brew)" ]; then
  brew update
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew upgrade

brew install \
  csshx \
  envchain \
  ghq \
  git \
  glide \
  go \
  htop-osx \
  peco \
  rbenv\
  ruby-build\
  the_silver_searcher \
  tmux \
  tree \
  zsh  \
  zsh-completions \


brew install vim --with-override-system-vi
