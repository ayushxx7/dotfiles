filetype plugin indent on
syntax on                       " enable basic syntax highlighting.

set nocompatible                " for sneak
set noswapfile                  " dont need swapfile
set undodir=$HOME\.vim\undo-dir " stores all undo info in file.
set undofile
scriptencoding utf-8
set encoding=utf-8
set ff=unix                     " unix like line endings.
set foldlevel=99                " by default keep the folds open.

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
set noeb vb t_vb=               " disable the annoying bell sound.

set nu                          " enable line numbers

set ai                          " automatic indentation picked from parent line
set ignorecase                  " ignore case when searching.
set hlsearch                    " highlight search
set incsearch                   " search as you type.

set isk+=-                      " dash separted words to text-object
set isfname-=:                  " jump to file:linenumber from stacktrace
set path=.\**                   " vim's find can search the directories recursively
set modelines=10                " file level vim config

if has('win32')                 " Open Gvim in fullscreen if Windows
  au GUIEnter * simalt ~x
endif

if !&scrolloff
  set scrolloff=1
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

" File Settings
set tabstop=2 shiftwidth=2 softtabstop=2 smarttab expandtab nocindent autoindent
autocmd FileType python : set tabstop=4 shiftwidth=4 softtabstop=4 smarttab expandtab nocindent autoindent foldmethod=indent

" Remove trailing spaces when saving
autocmd BufWritePre * %s/\s\+$//e

" Theme Customisation
colorscheme gruvbox
" colorscheme embark
" colorscheme PaperColor
set termguicolors

" Font & Colorscheme
set background=dark
set guifont=Consolas:h13
set guifontwide=NSimsun:h14

" Status line color changes when moving in and out of insert mode.
autocmd  InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
autocmd  InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

command! FileHistory execute ":BCommits!"
command! Resource source ~\\.vimrc

" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
command! Cd :cd %:p:h
command! Cdw :lcd %:p:h

" Lifeted from: https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python -m json.tool

" Lifted from CocPrettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

if has('nvim')
    set inccommand=nosplit

"treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "javascript", "lua" },
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  }
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256
" colorscheme snazzy
" colorscheme tender
colorscheme solarized8_high

if (has("termguicolors"))
    set termguicolors
    " hi LineNr ctermbg=NONE guibg=NONE
endif

endif
