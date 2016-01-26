" Vundle and bundles configuration
source ~/.vim/bundles.vim


let g:airline_powerline_fonts = 1

syntax enable
set background=dark
colorscheme solarized
" solarized options
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=16
let g:solarized_termtrans = 1

set tags+=gems.tags

set wildignore+=*/coverage/*,coverage/*

set number

set nowrap
set expandtab
set shiftwidth=2
set softtabstop=2
set hidden

set hlsearch

let g:vroom_use_zeus=1
let g:vroom_use_vimux=1

nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>
map <F10> :w <bar> ! clear && ruby % <CR>

noremap <silent> <F12> :set number!<CR>

"Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

"Open NERDTree if no files
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Close vim if NERDTree is last open buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


nnoremap <leader>rh :%s/:\(\w\+\)\(\s*=>\s*\)/\1: /g<CR>
nnoremap <leader>ts :%s/def test_\(.*\)/it "\1" do/ge<CR>:%s/class \(\w*\)Test.*/describe "\1" do/ge<CR>:%s/should "/ it "/ge<CR>:%s/should '/it '/ge<CR>:%s/expects/should_receive/ge<CR>:%s/stubs/stub/ge<CR>:%s/returns/and_return/ge<CR>:%s/require.*test_helper.*/require 'spec_helper'/ge<CR>:%s/def setup$/before do/ge<CR>:%s/setup do/before do/ge<CR>
nnoremap <leader>mo :%s/stubs/stub/ge<CR>:%s/\.returns/\.and_return/ge<CR>

nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

nnoremap <leader>z :!zeus test %<CR>

"Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"Auto strip trailing whitespace in ruby
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     *.rb :call TrimWhiteSpace()

set noswapfile

"let g:vimrubocop_config = '~/.rubocop.yml'
let g:syntastic_ruby_checkers=['mri']
au BufRead,BufNewFile Assemblyfile set filetype=ruby
