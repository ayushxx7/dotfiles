# Ayush Mandowara's Vim Config.

### How to setup:
1. Make sure you have at least version 8.2 December 2019 release of Vim or higher.
- It can be easily installed using chocolatey package manager. 
- Command: `choco install vim`
2. Clone this repo: `git clone https://github.com/ayushxx7/dotfiles`
3. Run `run.bat` file with Admin Priveleges.
- Along with adding my config, it will also install Chocolatey Package Manger.
- Using chocolatey, it will install node, fzf, and ripgrep
4. Open up gvim or vim, and press enter on all the errors it will throw right now. 
5. Enter this command `:PlugInstall`. This will install all the required plugins. 

## Additional Software Installed
### Chocolatey
This package manager helps us install the other dependencies very easily.

### Node.js
Since CoC is basically forked forked from VS Code, it uses Node.js for autocompletion. [It's Mandatory if you want CoC Autocompletion]

### FZF
- Fuzzy file search [<ctrl><f>] or `:Files`
- Fuzzy buffer search [<leader>b] or `:Buffers`

### RG
- Fuzzy line search [<leader>g] or `:Rg`
- Fuzzy line search inside parent Git directory [<leader>G] or `:GGrep`
