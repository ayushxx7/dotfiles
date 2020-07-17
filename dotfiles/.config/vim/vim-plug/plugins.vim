call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " covers a lot more in the dot (repeat command).
Plug 'tpope/vim-commentary' " to quickly comment and uncomment statements.
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intellisense Plugin.
Plug 'vim-airline/vim-airline' " customized status line.
Plug 'gruvbox-community/gruvbox' " community gruvbox.
Plug 'tell-k/vim-autopep8' " conform py file to pep8 standards.
Plug 'tell-k/vim-autoflake' " remove unused imports and variable names.
Plug 'tmhedberg/SimpylFold' " folding for Python Files. 
Plug 'Konfekt/FastFold' " fast folding. 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search using fzf.
Plug 'junegunn/fzf.vim' " fzf mappings.
Plug 'svermeulen/vim-easyclip' " awesome clipboard like features for yank/delete.
"
"Plug 'vim-syntastic/syntastic' - disabling for now. too many errors.
call plug#end()  
