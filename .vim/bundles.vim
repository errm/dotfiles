set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'derekwyatt/vim-scala'
Bundle 'skalnik/vim-vroom'
Bundle 'rking/ag.vim'
Bundle 'vim-scripts/AutoTag'
Bundle 'tpope/vim-sensible'
Bundle 'ngmy/vim-rubocop'
Bundle 'slim-template/vim-slim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'elixir-lang/vim-elixir'
Bundle 'Peeja/vim-cdo'

filetype plugin indent on     " required!
