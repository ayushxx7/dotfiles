filetype plugin indent on
syntax on                       " enable basic syntax highlighting.

set nocompatible                " for sneak
set noswapfile                  " dont need swapfile
set undodir=$HOME\.vim\undo-dir " stores all undo info in file.
set undofile
scriptencoding utf-8
set encoding=utf-8

set clipboard=unnamed           " Share clipboard with OS

set backspace=2                 " make backspace work like most other apps
set backspace=indent,eol,start

set laststatus=2                " always show statusline
set cursorcolumn
set cursorline
set ruler                       " show line number and column number
set guioptions-=m               " removes menu
set guioptions-=T               " removes toolbar
set guioptions-=r               " removes right scrollbar
set guioptions-=L               " remove left-hand scroll bar
set guicursor=a:blinkwait0      " remove cursor blinking
set rnu                         " relative line numbers
set ai                          " automatic indentation picked from parent line
set ignorecase                  " ignore case when searching.
set hlsearch                    " highlight search
set incsearch                   " search as you type.
set ff=unix                     " unix like line endings.
set foldlevel=99                " by default keep the folds open.
set isk+=-                      " dash separted words to text-object

" Font & Colorscheme
set background=dark
set guifont=Consolas:h13
set guifontwide=NSimsun:h14


if has('win32')                 " Open Gvim in fullscreen if Windows
  au GUIEnter * simalt ~x
endif

set noeb vb t_vb=               " disable the annoying bell sound.

if !&scrolloff
  set scrolloff=1
endif

                                " status line color changes when moving in and out of insert mode.
autocmd  InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
autocmd  InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

                                " file settings
set tabstop=2 shiftwidth=2 softtabstop=2 smarttab expandtab nocindent autoindent
autocmd FileType python : set tabstop=4 shiftwidth=4 softtabstop=4 smarttab expandtab nocindent autoindent foldmethod=indent


                                " remove trailing spaces when saving
autocmd BufWritePre * %s/\s\+$//e

set modelines=10                " file level vim config


" Lifted from: http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
" scroll over sub-lines (lines that are wrapped by default)
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
