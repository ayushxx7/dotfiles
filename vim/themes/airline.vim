let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" Unicode Symbols can be found in this answer, if needed
" https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline_symbols.notexists = '?'
let g:airline_symbols.dirty = '?'


let g:airline_theme = 'solarized_flood'

" set showtabline=1 - let's see if disabling tabs will be good
set noshowmode " insert/visual not needed to be shown in command window
