export RBENV_ROOT=/usr/local/var/rbenv
source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle rbenv
antigen theme jeremyFreeAgent/oh-my-zsh-powerline-theme powerline

antigen apply

