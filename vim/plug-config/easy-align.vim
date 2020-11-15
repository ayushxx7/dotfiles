" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

if !exists('g:easy_align_delimiters')
  let g:easy_align_delimiters = {}
endif
" Ignore delimiters that are NOT (!) highlighted as comment
let g:easy_align_delimiters['"'] = { 'pattern': '"' }

function! GFM()
let langs = ['ruby', 'yaml', 'vim', 'c']

for lang in langs
  unlet b:current_syntax
  silent! exec printf("syntax include @%s syntax/%s.vim", lang, lang)
  exec printf("syntax region %sSnip matchgroup=Snip start='```%s' end='```' contains=@%s",
              \ lang, lang, lang)
endfor
let b:current_syntax='mkd'

syntax sync fromstart
endfunction
