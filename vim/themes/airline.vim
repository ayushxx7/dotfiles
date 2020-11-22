" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
" set showtabline=1
" --- change to disable tabs when only one tab is open.
" -- already liking this change. Might actually disable tabline altogether,
" as I don't really understand the tabs anyway, and just keep hitting gT until
" I reach where I want to... I think I really need to invest time and optimise
" this part of my workflow as this is causing weird blanks in my brain and
" increasing the miss rate significantly.

" Unable to enforce showtabline behavior (auto sets to 2)
"autocmd FileType * set showtabline=0 "--workaround for above
"
"--- leaving this setting intact for now, as apparently my buffers are listed
"in the tabline, and I have gotten used to it by now.
" We don't need to see things like -- INSERT -- anymore
set noshowmode
