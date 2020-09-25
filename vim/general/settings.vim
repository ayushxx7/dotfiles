filetype plugin indent on 
syntax on " enable basic syntax highlighting.

set nocompatible " for sneak
set noswapfile "dont need swapfile
set undodir=$HOME\.vim\undo-dir "stores all undo info in file.
set undofile
scriptencoding utf-8 
set encoding=utf-8

set clipboard=unnamed " Share clipboard with OS

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

set laststatus=2 " always show statusline
set cursorcolumn
set cursorline
set ruler " show line number and column number
set guioptions-=m " removes menu
set guioptions-=T " removes toolbar
set guioptions-=r " removes right scrollbar
:set guioptions-=L  "remove left-hand scroll bar
set guicursor=a:blinkwait0 " remove cursor blinking
set nu "absolute line numbers
set ai "automatic indentation picked from parent line
set ignorecase "ignore case when searching.
set hlsearch "highlight search
set incsearch "search as you type.
set ff=unix "unix like line endings.
set foldlevel=99 " by default keep the folds open.

" Font & Colorscheme
set background=dark
set guifont=Consolas:h13
set guifontwide=NSimsun:h14
