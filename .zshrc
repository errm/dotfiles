source ~/.secrets.zsh
source ~/dotfiles/antigen/antigen.zsh

export EDITOR=vim

antigen use oh-my-zsh

antigen bundle git
antigen bundle rbenv
UNBUNDLED_COMMANDS=(knife)
antigen bundle bundler
antigen bundle errm/vundle.zsh
antigen theme agnoster
antigen bundle wd

antigen apply

#Chef
export PATH="/opt/chefdk/bin:$PATH"
alias kcu="knife cookbook upload"
function edb () { knife data bag $* --secret-file /etc/chef/encrypted_data_bag_secret }

#Fush DNS
alias fdns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder;"
#add ~/bin to front of path
export PATH="$HOME/bin:$PATH"

export BASH_ENV="~/.zshenv"
