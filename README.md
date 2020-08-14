# Ayush Mandowara's Vim Config.

### How to setup:
1. Make sure you have the latest version of Vim (>8.2) 
2. Clone this repo: `git clone https://github.com/ayushxx7/dotfiles`
3. Run `run.bat` file with Admin Priveleges.
4. Open up gvim or vim, and press enter on all the errors it will throw right now. 
5. Enter this command :PlugInstall. This will install all the required plugins. 
6. User chocolatey (that was also installed when you ran the batch file) to install fzf,ripgrep and node.js. 
- `choco install fzf`
- `choco install ripgrep`
- `choco install node`

### Why install these other things?
#### FZF: fuzz file/buffer search [mapped to <Ctrl><F>]
#### RG: super fast grep - open in vim like :Rg (or use the custom mapping <leader>g i.e. <space>g) and start searching for the line, it will open the file containing the line. 
#### Node.js: Since Coc is basically forked forked from VS Code, it uses Node.js for autocompletion. [It's Mandatory if you want CoC Autocompletion]
