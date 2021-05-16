let g:which_key_sep = '→'  "define separator
set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
" \ 'yt': 'log.error(traceback)',
"     \ 'y': 'print->log +f-stringify',
let g:which_key_map = {'*': 'which_key_ignore',
      \ 'l': 'Print->Logging',
      \ 'x': 'replace in visual selection',
      \ 'P': 'paste unformatted',
      \ ',': 'remove leading spaces',
      \ 'm': 'set mark',
      \ 'w': 'wrap in f-string',
      \ 'z': 'find and replace',
      \ 'tt': 'tableize',
      \ 't': 'generate c-tags',
      \ 'b': 'Choose Window',
      \ 'a': 'Diagnostics',
      \ 'c': 'Show Commands'
      \ }

let g:which_key_map_comma = {',': 'terminal in current buffer',
      \ 'c': 'colorscheme->PaperColor',
  \ 'u': '[user] block'}

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>
call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',', "g:which_key_map_comma")
