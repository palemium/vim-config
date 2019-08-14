scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8

set nocompatible

execute pathogen#infect()

syntax off
filetype off

set number
hi LineNr term=NONE

set path=,,**

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set listchars=eol:¶,trail:•,tab:>-,nbsp:¬
set dictionary+=/usr/share/dict/words
let g:netrw_banner=0
