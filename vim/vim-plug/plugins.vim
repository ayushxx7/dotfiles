call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy file search using fzf.
Plug 'junegunn/fzf.vim'                             " fzf mappings.
Plug 'tpope/vim-fugitive'                           " git plugin
Plug 'tpope/vim-commentary'                         " to quickly comment and uncomment statements.
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Intellisense Plugin.
Plug 'preservim/nerdtree'                           " file tree.
Plug 'justinmk/vim-sneak'                           " super quick jumping to desired position.
Plug 'svermeulen/vim-easyclip'                      " awesome clipboard like features for yank/delete.
Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }      " opening brackets / quotes will add a matching closing pair
Plug 'tpope/vim-surround'                           " changing surrounding brackets characters
Plug 'tpope/vim-repeat'                             " covers a lot more in the dot (repeat command).
Plug 'nelstrom/vim-visual-star-search'              " expanding star search from single word to all selection.
Plug 'mhinz/vim-startify'                           " cool startup screen

" THEMES
Plug 'gruvbox-community/gruvbox'
Plug 'ayu-theme/ayu-vim'
Plug 'romainl/Apprentice'
Plug 'joshdick/onedark.vim'
Plug 'aonemd/kuroi.vim'
Plug 'rafi/awesome-vim-colorschemes'

" THEME ENHANCEMENTS
Plug 'vim-airline/vim-airline'                      " customized status line.
Plug 'vim-airline/vim-airline-themes'               " airline themes
Plug 'sheerun/vim-polyglot'                         " better syntax highlighting

Plug 'unblevable/quick-scope'                       " highlight for f,F,t,T
Plug 'mhinz/vim-signify'
Plug 'wellle/targets.vim'                           " experiment - more text objects to operate on
Plug 'kana/vim-textobj-user'                        " experiment - custom text objects
Plug 'bps/vim-textobj-python'                       " experiment - custom text object for python
Plug 'osyo-manga/vim-brightest'                     " experiment - highlight word you are on
Plug 'junegunn/vim-easy-align'                      " align text around a delimiter
Plug 'bogado/file-line'                             " file:line jump (experiment)
Plug 't9md/vim-choosewin'                           " switch between windows easily
Plug 'weilbith/nerdtree_choosewin-plugin'           " choose buffer when opening a file with nerdtree
Plug 'romainl/vim-cool'                             " disable hl when search complete
Plug 'Yggdroot/indentLine'                          " show indent lines (fancy stuff, might not actually need it since Python)
Plug 'machakann/vim-highlightedyank'                " yanks will be highlighed for a short duration
" Neovim only Plugins
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(420) } }
endif

call plug#end()
