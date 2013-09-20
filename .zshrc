# Path to oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export EDITOR='vim'

#Profile junk
alias edzrc='vim ~/.zshrc'
alias rlzrc='source ~/.zshrc'
alias :q='exit'

#Ship to staging
alias sts='cap staging deploy:migrations && autotag create staging && git push'
alias stage='sts'
alias stps='cap pre-staging deploy:migrations && autotag create pre-staging && git push'
alias ship='sts'

#Force compass sprites to regenerate
alias rsp='bundle exec rake tmp:clear && touch tmp/restart.txt'

# Navigation aliases
alias cdrm='cd ~/reevoo/mark/'
alias cdrw='cd ~/reevoo/revieworld/'
alias cdrf='cd ~/reevoo/filler/'
alias cdca='cd ~/reevoo/carmen/'
alias cdis='cd ~/reevoo/image_service/'
alias cdao='cd ~/reevoo/ask_an_owner_app/'
alias cdbs='cd ~/reevoo/badge_service/'
alias cdqb='cd ~/reevoo/questionnaire_broker/'
alias cdr='cd ~/reevoo/'

alias scpry='be script/console --IRB=pry'
alias bcb='bundle check && bundle'
alias :q='exit'

POWERLINE_HIDE_USER_NAME="true"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_RIGHT_A="exit-status"
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="powerline"

ZSH_THEME="agnoster"

ZSH_THEME="agnoster"


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
