echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
echo "Removing existing .vimrc:" from %userprofile%\.vimrc
echo "Storing removed .vimrc as .vimrc_old"
move %userprofile%\.vimrc %userprofile%\.vimrc_old
echo "Removing existing _vimrc:" from %userprofile%\_vimrc
echo "Storing removed _vimrc as _vimrc_old"
move %userprofile%\_vimrc %userprofile%\_vimrc_old
echo "Copying setup .vimrc to:" %userprofile%
copy .vimrc %userprofile%
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
copy plug.vim %userprofile%\vimfiles\autoload\
echo "Copying coc-settings.json to autoload directory so it loads as vim loads. it contains some coc prefs"
copy coc-settings.json %userprofile%\vimfiles\autoload\
echo "Installing Chocolatey Package Manager"
Powershell.exe -executionpolicy bypass -File choco_install_powershell.ps1
echo "Installing Node"
start cmd /k choco install nodejs.install -y
echo "Installing FZF"
start cmd /k choco install ripgrep -y
echo "Installing Ripgrep"
start cmd /k choco install fzf -y
echo "Installing BAT"
start cmd /k choco install bat -y
echo "Installing Lazygit"
start cmd /k choco install lazygit -y
echo "Make sure to run `:PlugInstall` in Vim once the setup is done."
echo "Trying to run PlugInstall automatically"
vim -s install_plugins.txt
echo "You can terminate all Command Prompts Now"
pause
