nmap ?? :Rg!<CR>

if has('nvim')
    nmap <leader><leader> :bo vnew term://cmd<CR>A
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
