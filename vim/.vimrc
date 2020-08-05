source $HOME\.config\vim\vim-plug\plugins.vim
source $HOME\.config\vim\plug-config\vim-startify.vim
source $HOME\.config\vim\plug-config\sneak.vim
source $HOME\.config\vim\plug-config\coc.vim
source $HOME\.config\vim\plug-config\fzf.vim
source $HOME\.config\vim\themes\airline.vim
source $HOME\.config\vim\plug-config\nerdtree.vim
source $HOME\.config\vim\plug-config\vim-test.vim
source $HOME\.config\vim\plug-config\vim-easyclip.vim
source $HOME\.config\vim\keys\mappings.vim
source $HOME\.config\vim\general\settings.vim
source $HOME\.config\vim\general\experimental.vim
source $HOME\.config\vim\themes\gruvbox.vim
source $HOME\.config\vim\plug-config\sneak.vim

"""""""""""" This is for DialogFlow quick updation.
let @t='/messagesf["ad%h"sp'
let @y='/defaultResponsePlatformsf{"ad%h"gp'
"""""""""""""

let mapleader=" "

" remap for substitute command
nnoremap <leader>z :%s//gc<Left><Left><Left>
" quickly generate ctags
nnoremap <leader>t :!ctags -R .

