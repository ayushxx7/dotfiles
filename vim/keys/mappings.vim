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

" switching between open windows remapped.
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" disable search highlighting
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" remap for substitute command
nnoremap <leader>z :%s//gc<Left><Left><Left>
" quickly generate ctags
nnoremap <leader>t :!ctags -R .
