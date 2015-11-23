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
au BufNewFile,BufRead *.ejs set filetype=html
colorscheme vendetta

"spacing
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0

"jshint2 settings
let jshint2_save = 1
let jshint2_read = 1
let jshint2_confirm = 0

"leader settings
let mapleader=" "
noremap <Leader>q :q<CR>
noremap <Leader>l :JSHint<CR>
noremap <Leader>; <esc>A;

"vim-javascript setting
let javascript_enable_domhtmlcss = 1

"vim-indent-guides settings
set background=light
set ts=2 sw=2 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1

"vim-jsbeautify settings
noremap <Leader>fj :call JsBeautify()<CR>
noremap <Leader>fh :call HtmlBeautify()<CR>

