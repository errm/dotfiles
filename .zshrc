source ~/.secrets.zsh
source ~/dotfiles/antigen/antigen.zsh

export EDITOR=vim
export RBENV_ROOT=/usr/local/var/rbenv

antigen use oh-my-zsh

antigen bundle git
antigen bundle rbenv
UNBUNDLED_COMMANDS=(knife)
antigen bundle bundler
antigen bundle errm/vundle.zsh
antigen theme agnoster
antigen bundle wd

antigen apply

export PATH="/opt/chefdk/bin:$PATH"
