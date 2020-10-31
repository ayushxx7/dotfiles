if has('win32') "window config for windows machine.
  au GUIEnter * simalt ~x
endif

set noeb vb t_vb= "disable the annoying bell sound.

if !&scrolloff
  set scrolloff=1
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:autoflake_remove_all_unused_imports=1
let g:autoflake_remove_unused_variables=1

let g:SimpylFold_docstring_preview=1 " preview docstrings on folded methods.

"status line color changes when moving in and out of insert mode.
autocmd  InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
autocmd  InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

set tabstop=2 shiftwidth=2 softtabstop=2 smarttab expandtab nocindent autoindent
autocmd FileType python : set tabstop=4 shiftwidth=4 softtabstop=4 smarttab expandtab nocindent autoindent

:nnoremap <F5> :buffers<CR>:buffer<Space>

" remove trailing spaces when saving
autocmd BufWritePre * %s/\s\+$//e
set modelines=10

"""Lifted from: http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/"""
" move over wrapped lines as well
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

" quick jumps in a scrolling fashion
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" move between splits
nmap gh <C-w>h
nmap gj <C-w>j
nmap gk <C-w>k
nmap gl <C-w>l

" move between tabs
nmap <C-l> gt
nmap <C-h> gT
