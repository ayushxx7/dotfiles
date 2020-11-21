
if !&sidescrolloff
  set sidescrolloff=5
endif

let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:autoflake_remove_all_unused_imports=1
let g:autoflake_remove_unused_variables=1

let g:SimpylFold_docstring_preview=1 " preview docstrings on folded methods.

nnoremap <F5> :buffers<CR>:buffer<Space>

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
nmap <C-j> gt
nmap <C-k> gT

" snippets
" ActivateAddons vim-snippets snipmate

" reisze windows hotkeys
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

set nu "Works well with rnu. Current line number is set to actual value instead of 0

set isfname-=: "jump to file:linenumber from stacktrace
set path=.\** "vim's find can search the directories recursively
