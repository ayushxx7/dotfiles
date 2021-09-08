" setting leader key to <space>
let mapleader=" "

" MAPPINGS
" vim tabs quick shortcuts
map tn :tabnew<CR>
map tq :tabclose<CR>

" undotree toggle
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

" disable search highlighting
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" remap for substitute command
nnoremap <leader>z :%s//gc<Left><Left><Left>
" substitute in last visual selection
noremap <leader>x <Esc>:%s/\%V//gc<Left><Left><Left><Left>
" quickly generate ctags
nnoremap <leader>t :!ctags -R .<CR>

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

" Surround like delete/change surrounding function calls
" https://www.reddit.com/r/vim/comments/bk2l3i/delete_surrounding_function_calls_the_easy_way/emew99g?utm_source=share&utm_medium=web2x&context=3
nmap <silent> dsf ds)db
nnoremap <silent> csf [(cb

nmap // :BLines<CR>

nmap ,, :ter<CR>A

" quick jumps in a scrolling fashion
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

"quickly switch colorscheme
map ,m :colorscheme molokai<CR>
map ,c :colorscheme PaperColor<CR>
map ,t :colo tender<CR>

nmap ,p :Prettier<CR>

map ,g :G<CR>

"Convert print statement to logging
nmap <leader>l :%s/print(\(.*\))/log.info(" ".join(map(str, [\1]))/gc

" buffer switch via tab
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>

" jump to definition, split on right
nnoremap g] :botright vsp<cr><c-]>

" Distraction free writing
map <F5> :Goyo 85%<CR>:Limelight<CR>:colo apprentice<CR>:setlocal spell<CR>
map <F6> :Goyo<CR>:Limelight!!<CR>:colo solarized8_high<CR>:setlocal nospell<CR>

" Toggle Table Mode
nmap ,e :TableModeToggle<CR>
