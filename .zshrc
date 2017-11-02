source ~/dotfiles/antigen/antigen.zsh

export EDITOR=vim

antigen use oh-my-zsh

antigen bundle git
antigen bundle rbenv
antigen bundle bundler
antigen bundle errm/vundle.zsh
antigen theme agnoster
antigen bundle wd

antigen apply

#Fush DNS
alias fdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder;"
#add ~/bin to front of path
export PATH="$HOME/bin:$PATH"

export BASH_ENV="~/.zshenv"

# GNU sed
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
