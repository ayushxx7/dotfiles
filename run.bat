echo off
echo "Copying .vimrc to:" %userprofile%
cp .vimrc %userprofile%
echo "Removing _vimrc:" from %userprofile%\_vimrc
echo "Storing removed _vimrc as _vimrc_old"
mv %userprofile%\_vimrc %userprofile%\_vimrc_old
echo "Copying vim directory to .config folder"
mkdir %userprofile%\.config
robocopy vim %userprofile%\.config\vim /E
echo "Making Plugged Directory, where all plugins from git will be stored"
mkdir %userprofile%\.vim\plugged
echo "Creating Undo Directory, where undohistory will be saved. so you can undo even after you have closed the file."
mkdir %userprofile%\.vim\undo-dir
echo "Creating autoload directory for vim plug - Plugin Manager"
mkdir %userprofile%\vimfiles\autoload
echo "Copying plug.vim to autoload directory so it loads as vim loads"
cp plug.vim %userprofile%\vimfiles\autoload\
echo "Copying coc-settings.json to autoload directory so it loads as vim loads. it contains some coc prefs"
cp coc-settings.json %userprofile%\vimfiles\autoload\
echo "Installing Chocolatey Package Manager"
Powershell.exe -executionpolicy bypass -File choco_install_powershell.ps1
echo "Installing Node"
start cmd /k choco choco install nodejs.install -y
echo "Installing FZF"
start cmd /k choco install ripgrep -y
echo "Installing Ripgrep"
start cmd /k choco install fzf -y
echo "Installing BAT"
start cmd /k choco install bat -y
echo "Make sure to run `:PlugInstall` in Vim once the setup is done."
echo "You can terminate all Command Prompts Now"
pause
