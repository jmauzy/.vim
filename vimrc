set nocompatible
"pathogen commands
call pathogen#helptags()
call pathogen#infect()

"nerdtree commands
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set laststatus=2
set runtimepath^=~/.vim/bundle/
syntax on
colorscheme vendetta
let mapleader="/ "

"spacing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0
