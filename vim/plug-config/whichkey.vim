let g:which_key_sep = '→'  "define separator
set timeoutlen=500

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
      \ 'c': 'Coc Commands',
      \ 'yt': 'log.error(traceback)',
      \ 'y': 'print->log +f-stringify',
      \ }

let g:which_key_map_comma = {',': 'terminal in current buffer',
      \ 'f': 'floating lazygit',
      \ 'g': 'Git Status',
      \ 'r': 'Fuzzy Search Text (RipGrep)',
      \ 'u': '[user] block',
      \ 'e': 'Toggle Table Mode'}

nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> , :<c-u>WhichKey ','<CR>
vnoremap <silent> , :<c-u>WhichKeyVisual ','<CR>
call which_key#register('<Space>', "g:which_key_map")
call which_key#register(',', "g:which_key_map_comma")
