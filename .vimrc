syntax on
filetype plugin indent on

set nocompatible  
set incsearch      
set showmode       
set modeline
set scrolloff=8

set noerrorbells
set visualbell

set shiftwidth=4
set tabstop=4      " tabs are 4 spaces
set expandtab      " use spaces when tab
set backspace=2

set encoding=utf-8

set statusline=%1*[%02n]%*\ %2*%F%*\ %(\ %M%R%H)%)%=%3*Pos=<%l,%c%V>%*

hi Comment ctermfg=Grey guifg=Grey

" mutt mail colours
hi mailHeader     ctermfg=brown
hi mailSignature  ctermfg=darkblue
hi mailQuoted1    ctermfg=darkgreen
hi mailQuoted2    ctermfg=darkcyan
hi mailQuoted3    ctermfg=darkgreen
hi mailQuoted4    ctermfg=darkcyan
hi mailQuoted5    ctermfg=darkgreen
hi mailQuoted6    ctermfg=darkcyan
