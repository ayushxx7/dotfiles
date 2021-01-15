if !&sidescrolloff
  set sidescrolloff=5
endif

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

set nu         " Works well with rnu. Current line number is set to actual value instead of 0

set isfname-=: " jump to file:linenumber from stacktrace
set path=.\**  " vim's find can search the directories recursively

" press `comma` to swtich to normal mode in terminal
tnoremap , <C-\><C-n>

" Move between terminal and normal windows easily
" Reference: http://vimcasts.org/episodes/neovim-terminal-mappings/

" Terminal mode:
tnoremap <M-h> <c-\><c-n><c-w>h
tnoremap <M-j> <c-\><c-n><c-w>j
tnoremap <M-k> <c-\><c-n><c-w>k
tnoremap <M-l> <c-\><c-n><c-w>l
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
" might change the config as requires arrow keys, hence moving away from home
" row. It could be possible though that when you resize, there is some metal
" buffer which actually required the mini-break.. Who knows. I was not
" resizing windows anyways, so this is a proper self-exploartion experiment.


" Adding blank lines. (Press Enter to add empty lines)
nnoremap <silent><expr> <CR> &buftype ==# 'quickfix' ? '<CR>' : ':<C-U>call append(".", repeat([""], v:count1))<CR>'

" Lifeted from: https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python -m json.tool
" Lifeted from: https://coderwall.com/p/faceag/format-json-in-vim

" Lifted from CocPrettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" https://www.youtube.com/watch?v=x8uleL9j5lY
nmap // :BLines<CR>
nmap ?? :Rg!<CR>
command! FileHistory execute ":BCommits!"
command! Resource source ~\\.vimrc

" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
command! ChangeDirToBuffer :cd %:p:h
command! ChangeDirToBufferForCurrentWindow :lcd %:p:h

if has('nvim')
    set inccommand=nosplit
endif

