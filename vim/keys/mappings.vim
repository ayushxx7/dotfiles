" setting leader key to <space>
let mapleader=" "

" MAPPINGS
" Ctrl+F1 to toggle menu bar
nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :ts <CR>

" vim tabs quick shortcuts
map tn :tabnew<CR>
map tk :tabprev<CR>
map tj :tabnext<CR>
map tq :tabclose<CR>

" undotree toggle
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
"file browser
nnoremap <leader>ff :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" disable search highlighting
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" remap for substitute command
nnoremap <leader>z :%s//gc<Left><Left><Left>
" quickly generate ctags
nnoremap <leader>t :!ctags -R .

" press `comma` to swtich to normal mode in terminal
tnoremap , <C-\><C-n>

" Move between terminal and normal windows easily
" Reference: http://vimcasts.org/episodes/neovim-terminal-mappings/

" Terminal mode:
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l

" Move between split windows easily
" Insert mode:
inoremap <M-h> <Esc><c-w>h
inoremap <M-j> <Esc><c-w>j
inoremap <M-k> <Esc><c-w>k
inoremap <M-l> <Esc><c-w>l
" Visual mode:
vnoremap <M-h> <Esc><c-w>h
vnoremap <M-j> <Esc><c-w>j
vnoremap <M-k> <Esc><c-w>k
vnoremap <M-l> <Esc><c-w>l
" Normal mode:
nnoremap <M-h> <c-w>h
nnoremap <M-j> <c-w>j
nnoremap <M-k> <c-w>k
nnoremap <M-l> <c-w>l

"Reference: http://vimcasts.org/episodes/neovim-terminal-mappings/

" Lifted from: https://github.com/mopp/dotfiles/blob/master/.vimrc
" Changing window size.
noremap <silent> <S-Left>  :<C-U>wincmd <<CR>
noremap <silent> <S-Right> :<C-U>wincmd ><CR>
noremap <silent> <S-Up>    :<C-U>wincmd -<CR>
noremap <silent> <S-Down>  :<C-U>wincmd +<CR>

" Lifted from: http://andrewradev.com/2011/04/26/my-vim-workflow-basic-moves/
" scroll over sub-lines (lines that are wrapped by default)
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk

