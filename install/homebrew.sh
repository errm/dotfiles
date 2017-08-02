#!/bin/bash
set -e

if [ -x "$(command -v brew)" ]; then
  brew update
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew upgrade

brew install \
  corectl \
  csshx \
  git \
  git-crypt \
  glide \
  go \
  heroku-toolbelt \
  htop-osx \
  imagemagick \
  node-build \
  nodenv \
  percona-server \
  postgresql \
  qt5 \
  rbenv\
  ruby-build\
  the_silver_searcher \
  tmux \
  tree \
  zsh  \
  zsh-completions \

ln -sfv /usr/local/opt/percona-server/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

brew install vim --override-system-vim

brew link --force qt5
