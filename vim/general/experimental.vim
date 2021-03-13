" quick jumps in a scrolling fashion
nmap J 5j
nmap K 5k
xmap J 5j
xmap K 5k

" move between tabs
nmap <C-j> gt
nmap <C-k> gT

" Adding blank lines. (Press Enter to add empty lines)
nnoremap <silent><expr> <CR> &buftype ==# 'quickfix' ? '<CR>' : ':<C-U>call append(".", repeat([""], v:count1))<CR>'

" Lifeted from: https://coderwall.com/p/faceag/format-json-in-vim
com! FormatJSON %!python -m json.tool
" Lifeted from: https://coderwall.com/p/faceag/format-json-in-vim

" Lifted from CocPrettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap ,p :Prettier<CR>

" https://www.youtube.com/watch?v=x8uleL9j5lY
nmap // :BLines<CR>
nmap ?? :Rg!<CR>
command! FileHistory execute ":BCommits!"
command! Resource source ~\\.vimrc
nmap ,r :Resource<CR>

" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
command! Cd :cd %:p:h
command! Cdw :lcd %:p:h

if has('nvim')
    set inccommand=nosplit
endif

" substitute in last visual selection
noremap <leader>x <Esc>:%s/\%V//gc<Left><Left><Left><Left>

nmap <leader><leader> :tab ter<CR>A

nmap ,, :%s/^\s*//gc<CR>

map ,m :colorscheme molokai<CR>
map ,c :colorscheme PaperColor<CR>
map ,g :colorscheme gruvbox<CR>
