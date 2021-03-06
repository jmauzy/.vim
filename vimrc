set nocompatible
"pathogen commands
call pathogen#helptags()
call pathogen#infect()
set runtimepath^=~/.vim/bundle/

"leader settings
let mapleader=" "
noremap <Leader>q :q<CR>
"noremap <Leader>l :SyntasticCheck<CR>
noremap <Leader>; <esc>A;
noremap <Leader>r :!rake<CR>

"nerdtree commands
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set laststatus=2
set backspace=2
syntax on
au BufNewFile,BufRead *.ejs set filetype=html
colorscheme vendetta
filetype plugin indent on
set hlsearch
runtime macros/matchit.vim

"relative line numbering with current line number enabled
set relativenumber

"spacing
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0

"vim-jsx settings
let g:jsx_ext_required = 0

"RSpec.vim mappings
noremap <Leader>t :call RunCurrentSpecFile()<CR>
noremap <Leader>s :call RunNearestSpec()<CR>
noremap <Leader>l :call RunLastSpec()<CR>
noremap <Leader>a :call RunAllSpecs()<CR>

"systastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_html_tidy_ignore_errors = [
      \'<form> escaping malformed URI reference'  
      \]

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

