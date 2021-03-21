nmap ?? :Rg!<CR>

if has('nvim')
    nmap <leader><leader> :bo vnew term://cmd<CR>A
endif

nmap <leader>, :%s/^\s*//gc<CR>
