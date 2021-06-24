# Ayush Mandowara's Vim Config.

## How to setup?
1. Make sure you have at least version 8.2 December 2019 release of Vim\* or higher.
    - Download latest version from [here](https://www.vim.org/download.php#pc)
2. Clone this repo:   
    - `git clone https://github.com/ayushxx7/dotfiles`
3. Run `run.bat` file with `Admin Priveleges`.  
    - In case you don't open the bat in admin mode, it will try to launch itself in Admin mode.
4. Once everything is installed, run `:CocInstall coc-python` to get LSP support for Python. 
    - You can get LSP Support for more languages as well. To know more, click [here](https://github.com/neoclide/coc.nvim#readme).

### Note - Setup

You would most likely need to run the bat file twice, 
- as first time chocolatey will be installed, 
- and the second time the other dependencies will be installed using chocolatey. 

I am looking for a way make this more seamless. Please submit a PR if you can do it for me :)

### Note - Plugin Installation
The Plugin Manger (vim-plug) will attempt to install all plugins automatically.  
If that doesn't happen:
- Open up (g/neov)vim, and press enter on all the errors it will throw right now
- Enter this command `:PlugInstall`
- Relaunch (g/neo)vim

## About the Installer - What will this batch script do?
- Setup my vim config
- Install [Chocolatey Package Manager](https://chocolatey.org/).
- Install [node](https://nodejs.org/en/), [fzf](https://github.com/junegunn/fzf), [ripgrep](https://github.com/BurntSushi/ripgrep) and [lazygit](https://github.com/jesseduffield/lazygit) using Chocolatey  

### Additional Software Installed

#### Chocolatey

This package manager helps us install the other dependencies very easily.

#### Node.js

CoC uses Node.js for the language servers required for autocompletion.

#### FZF

- Fuzzy file search `ctrl`+`f` or `:Files`
- Fuzzy buffer search `<leader>b` or `:Buffers`

#### RG

- Fuzzy line search `<leader>g` or `:Rg`
- Fuzzy line search inside parent Git directory `<leader>G` or `:GGrep`

#### BAT

- Preview window with syntax highlighting
- Can be used in place of the `cat` command

#### LazyGit

- opens up a much more pleasing git interface
- shortcuts for doing common git operations

## Windows 7
On Windows 7, this batch script fails to execute properly
- You have to install Node.js (v13.14.0) manually from here: [Official Releases - Node.js](https://nodejs.org/download/release/v13.14.0/)
- You have to install Yarn from here: [Yarn Windows Download](https://classic.yarnpkg.com/latest.msi)
- Once you have these installed, run `:CocInstall coc-python` to get LSP support for Python
