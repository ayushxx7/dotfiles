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

" substitute in last visual selection
nnoremap <leader>x :%s/\%V//gc<Left><Left><Left><Left>
