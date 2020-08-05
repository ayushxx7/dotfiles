call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify' "cool startup screen
Plug 'tpope/vim-fugitive' "git plugin 
Plug 'tpope/vim-surround' "changing surrounding brackets characters
Plug 'tpope/vim-repeat' " covers a lot more in the dot (repeat command).
Plug 'tpope/vim-commentary' " to quickly comment and uncomment statements.
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intellisense Plugin.
Plug 'vim-airline/vim-airline' " customized status line.
Plug 'vim-airline/vim-airline-themes' "airline themes
Plug 'gruvbox-community/gruvbox' " community gruvbox.
" Plug 'tell-k/vim-autopep8' " conform py file to pep8 standards.
" Plug 'tell-k/vim-autoflake' " remove unused imports and variable names.
Plug 'nvie/vim-flake8' " flake8 autolinting (press <F7>)
" Plug 'tmhedberg/SimpylFold' " folding for Python Files. 
" Plug 'Konfekt/FastFold' " fast folding. 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search using fzf.
Plug 'junegunn/fzf.vim' " fzf mappings.
Plug 'justinmk/vim-sneak' " super quick jumping to desired position.
Plug 'svermeulen/vim-easyclip' " awesome clipboard like features for yank/delete.
Plug 'nelstrom/vim-visual-star-search' " expanding star search from single word to all selection.
Plug 'vim-test/vim-test' " for pytest
Plug 'preservim/nerdtree' " file tree.
Plug 'jiangmiao/auto-pairs' " opening brackets / quotes will add a matching closing pair. ## experimental.
Plug 'sheerun/vim-polyglot' " better syntax highlighting
"""experimental""" 
Plug 'vim-syntastic/syntastic' 
" Plug 'ryanoasis/vim-devicons' " icon pack
call plug#end()  
