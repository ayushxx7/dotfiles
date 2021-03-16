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
nmap ,p :Prettier<CR>

" https://www.youtube.com/watch?v=x8uleL9j5lY
nmap // :BLines<CR>
nmap ?? :Rg!<CR>
command! FileHistory execute ":BCommits!"
command! Resource source ~\\.vimrc
nmap ,r :Resource<CR>

" https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
command! Cd :cd %:p:h
command! Cdw :lcd %:p:h

if has('nvim')
    set inccommand=nosplit
endif

" substitute in last visual selection
noremap <leader>x <Esc>:%s/\%V//gc<Left><Left><Left><Left>

nmap ,, :ter<CR>A
if has('nvim')
    nmap <leader><leader> :bo vnew term://cmd<CR>A
endif

nmap <leader>, :%s/^\s*//gc<CR>

map ,m :colorscheme molokai<CR>
map ,c :colorscheme PaperColor<CR>
map ,g :colorscheme gruvbox<CR>

"""" Setup for Django
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2

" treesitter
if has('nvim')

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "javascript", "lua" }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF

" configure nvcode-color-schemes
let g:nvcode_termcolors=256

syntax on
colorscheme snazzy

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

endif
