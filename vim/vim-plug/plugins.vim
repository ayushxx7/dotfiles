" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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
Plug 'wojciechkepka/bogster'
Plug 'ayu-theme/ayu-vim'
Plug 'romainl/Apprentice'
Plug 'joshdick/onedark.vim'
Plug 'aonemd/kuroi.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-scripts/Colour-Sampler-Pack'

" THEME ENHANCEMENTS

" Disable vim-airline when firenvim starts since vim-airline takes two lines.
if !exists('g:started_by_firenvim')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
endif
Plug 'sheerun/vim-polyglot'                         " better syntax highlighting

Plug 'unblevable/quick-scope'                       " highlight for f,F,t,T
Plug 'mhinz/vim-signify'                            " real time diff marker w.r.t HEAD
Plug 'wellle/targets.vim'                           " change in `next` <quote> (cin')

Plug 'osyo-manga/vim-brightest'                     " highlight word you are on
Plug 'junegunn/vim-easy-align'                      " align text around a delimiter
Plug 'bogado/file-line'                             " file:line jump
Plug 't9md/vim-choosewin'                           " switch between windows easily
Plug 'weilbith/nerdtree_choosewin-plugin'           " choose buffer when opening a file with nerdtree
Plug 'romainl/vim-cool'                             " disable hl when search complete
" Plug 'Yggdroot/indentLine'                          " show indents
Plug 'machakann/vim-highlightedyank'                " highlight yank
Plug 'embark-theme/vim', { 'as': 'embark' }         " colorscheme embark

Plug 'vim-scripts/python_match.vim'                 " extend % match for python
Plug 'raimon49/requirements.txt.vim'                " syn-hl for requirements.txt
Plug 'MTDL9/vim-log-highlighting'                   " syn-hl for logs

Plug 'tpope/vim-unimpaired'                         " remaps that people say are great
Plug 'kana/vim-textobj-user'                        " custom text objects
Plug 'kana/vim-textobj-indent'                      " custom text object for indent (cai/cii/caI/ciI)
Plug 'kana/vim-textobj-line'                        " custom text object for line (cil/cal)
Plug 'jeetsukumaran/vim-pythonsense'                " python objects. (kana is slow)
Plug 'will133/vim-dirdiff'                          " calculate diff betwee directories
Plug 'iamcco/markdown-preview.nvim',
      \ { 'do': 'cd app && yarn install' , 'for': 'markdown' }         " preview markdown files instantly
Plug 'tpope/vim-abolish'                            " snake_case to CamelCase
Plug 'dhruvasagar/vim-table-mode'                   " for md compatible tables
Plug 'voldikss/vim-floaterm'                        " floating terminal

" Experiments
Plug 'AndrewRadev/switch.vim'                       " true/false quick switch
Plug 'liuchengxu/vim-which-key'                     " vim which key
Plug 'tpope/vim-speeddating'                        " ctrl-a/x to increment decrement dates
Plug 'mzlogin/vim-markdown-toc', {'for': 'markdown'} " table of contents
Plug 'junegunn/goyo.vim'      " distraction free writing
Plug 'junegunn/limelight.vim' " distraction free writing
Plug 'lervag/vimtex'          " latex
Plug 'mbbill/undotree'        " undo tree
Plug 'SirVer/ultisnips'       " Snippets - Engine
Plug 'honza/vim-snippets'     " Snippets - default snips

" Neovim only Plugins
if has('nvim')
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(420) } }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-treesitter/playground'
  Plug 'github/copilot.vim' " - AI which writes code
endif

" Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

Plug 'mogelbrod/vim-jsonpath' " json key chain
call plug#end()
