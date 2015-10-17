set nocompatible
source ~/.vim/bundle/pathogen/autoload/pathogen.vim
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

set laststatus=2
set runtimepath^=~/.vim/bundle/
syntax on
let mapleader="/ "

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=0
