source ~/.secrets.zsh
source ~/dotfiles/antigen/antigen.zsh

export RBENV_ROOT=/usr/local/var/rbenv

antigen use oh-my-zsh

antigen bundle git
antigen bundle rbenv
antigen bundle bundler
antigen bundle errm/vundle.zsh
antigen theme agnoster

antigen apply
