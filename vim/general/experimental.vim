nmap ?? :Rg!<CR>

if has('nvim')
    nmap <leader><leader> :bo vnew term://zsh<CR>A
endif

nmap <leader>, :%s/^\s*//gc<CR>

"wrap value in bracket with f-string
nmap <leader>w ysib"ysi"}F"if<Esc>
"change print to log.info
nmap <leader>y csflog.info<Esc><leader>w
" to log traceback
nmap <leader>yt Ilog.error(f"{traceback.format_exc()}")<Esc>

nmap ,u Go[user]A	username = Ayush Mandowaraemail = ayushxx7@gmail.comusername = ayushxx7

"Indentation from two to four spaces
com! IndentToFourSpaces :%s/^\s*/&&

"quick switch to normal mode (avoid esc)
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

let g:firenvim_config = {
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }

let fc = g:firenvim_config['localSettings']
let fc['https://www.overleaf.com/*'] = { 'takeover': 'never', 'priority': 1 }

if exists('g:started_by_firenvim') && g:started_by_firenvim
    " general options
    set laststatus=0 nonumber noruler noshowcmd

    augroup firenvim
        autocmd!
        autocmd BufEnter *.txt setlocal filetype=markdown | colorscheme github
    augroup END
endif

" Disable indentLines by default
let g:indentLine_enabled = 0
