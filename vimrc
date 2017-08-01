scriptencoding utf-8
set encoding=utf-8

set nocompatible

execute pathogen#infect()

syntax enable
filetype plugin indent on

set number

set path=,,**

inoremap jk <Esc>
let mapleader="\<Space>"
nnoremap <Leader>ev :vsplit $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set listchars=eol:$,trail:-


