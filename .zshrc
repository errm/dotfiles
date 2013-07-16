# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'

#Profile junk
alias edzrc='vim ~/.zshrc'
alias rlzrc='source ~/.zshrc'
alias :q='exit'

#Ship to staging
alias sts='autotag create staging && git push && cap staging deploy:migrations'
alias stps='autotag create pre-staging && git push && cap pre-staging deploy:migrations'
alias stage='sts'
alias ship='sts'

#Force compass sprites to regenerate
alias rsp='bundle exec rake tmp:clear && touch tmp/restart.txt'

# Navigation aliases
alias cdrm='cd ~/work/reevoomark3/'
alias cdrw='cd ~/work/revieworld/'
alias cdbs='cd ~/work/badge_service/'
alias cdol='cd ~/work/reevooffline/'
alias cdw='cd ~/work/'

alias scpry='be script/console --IRB=pry'
alias bcb='bundle check && bundle'
alias :q='exit'

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="robbyrussell"

alias ohmyzsh="edit ~/.oh-my-zsh"

alias password="openssl rand -base64 12 | tr -d '\n' | pbcopy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(git rails3 bundler)

source $ZSH/oh-my-zsh.sh

# Set up the PATH...
export PATH=$HOME/bin:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
eval "$(rbenv init -)"

# see https://gist.github.com/burke/1688857
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_FREE_MIN=500000
export RUBY_HEAP_MIN_SLOTS=40000
