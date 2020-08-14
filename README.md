# Ayush Mandowara's Vim Config.

### How to setup:
1. Make sure you have the latest version of Vim (>8.2) 
2. Clone this repo: `git clone https://github.com/ayushxx7/dotfiles`
3. Run `run.bat` file with Admin Priveleges.
- Along with adding my config, it will also install Chocolatey Package Manger.
- Using chocolatey, it will install node, fzf, and ripgrep
4. Open up gvim or vim, and press enter on all the errors it will throw right now. 
5. Enter this command `:PlugInstall`. This will install all the required plugins. 

### Why install these other things?
#### Node.js: Since Coc is basically forked forked from VS Code, it uses Node.js for autocompletion. [It's Mandatory if you want CoC Autocompletion]
#### Chocolatey: This package manager helps us install the other dependencies very easily.
#### FZF: fuzz file/buffer search [mapped to <Ctrl><F>]
#### RG: super fast grep - open in vim like :Rg (or use the custom mapping <leader>g i.e. <space>g) and start searching for the line, it will open the file containing the line. 
