# Ayush Mandowara's Vim Config.

### How to setup:

1. Make sure you have at least version 8.2 December 2019 release of Vim\* or higher.
2. Clone this repo: `git clone https://github.com/ayushxx7/dotfiles`
3. Run `run.bat` file with `Admin Priveleges`. In case you don't open the bat in admin mode, it will try to launch itself in Admin mode.

This will

- Setup my vim config
- Install Chocolatey Package Manager.
- Install node, fzf, and ripgrep using Chocolatey
  \*Note: You would most likely need to run the bat file twice, as first time chocolatey will be installed, and the second time the other dependencies will be installed using chocolatey. I am looking for a way make this seamless. If anyone has ideas, please let me know.

4. Open up Gvim or vim, and press enter on all the errors it will throw right now.
5. Enter this command `:PlugInstall`.
6. Relaunch Gvim.

## Additional Software Installed

### Chocolatey

This package manager helps us install the other dependencies very easily.

### Node.js

CoC uses Node.js for the language servers required for autocompletion.

### FZF

- Fuzzy file search `ctrl`+`f` or `:Files`
- Fuzzy buffer search `<leader>b` or `:Buffers`

### RG

- Fuzzy line search `<leader>g` or `:Rg`
- Fuzzy line search inside parent Git directory `<leader>G` or `:GGrep`

### BAT

- Preview window with syntax highlighting
- Can be used in place of the `cat` command

\*Note: Chocolatey can be used to install the latest version of Vim.
Enter this command in command prompt: `choco install vim -y`.
You may need to remove previous installation of Vim as the config might still be picked from the previous installation.
This is because chocolatey install packages in `C:/tools`. You would also need to add `C:\tools` in `PATH` if not already added.
