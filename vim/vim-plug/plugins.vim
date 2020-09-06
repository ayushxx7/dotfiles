call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search using fzf.
Plug 'junegunn/fzf.vim', { 'commit': '23dda8602f138a9d75dd03803a79733ee783e356'}
" Plug 'junegunn/fzf.vim' " fzf mappings.
Plug 'tpope/vim-fugitive' "git plugin 
Plug 'tpope/vim-commentary' " to quickly comment and uncomment statements.
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Intellisense Plugin.
Plug 'preservim/nerdtree' " file tree.
Plug 'justinmk/vim-sneak' " super quick jumping to desired position.
Plug 'svermeulen/vim-easyclip' " awesome clipboard like features for yank/delete.
Plug 'jiangmiao/auto-pairs' " opening brackets / quotes will add a matching closing pair. ## experimental.
Plug 'tpope/vim-surround' "changing surrounding brackets characters
Plug 'tpope/vim-repeat' " covers a lot more in the dot (repeat command).
Plug 'nelstrom/vim-visual-star-search' " expanding star search from single word to all selection.
Plug 'mhinz/vim-startify' "cool startup screen
Plug 'mattn/emmet-vim' " quickly write html.
Plug 'gruvbox-community/gruvbox' " community gruvbox.
Plug 'vim-airline/vim-airline' " customized status line.
Plug 'vim-airline/vim-airline-themes' "airline themes
Plug 'sheerun/vim-polyglot' " better syntax highlighting
Plug 'unblevable/quick-scope' " highlight for f,F,t,T
call plug#end()
