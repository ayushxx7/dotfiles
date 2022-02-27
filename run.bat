echo off

:: enable admin mode (if not already run as admin)
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

:: remove old vimrc
echo "Removing existing .vimrc:" from %userprofile%\.vimrc
echo "Storing removed .vimrc as .vimrc_old"
move %userprofile%\.vimrc %userprofile%\.vimrc_old
echo "Removing existing _vimrc:" from %userprofile%\_vimrc
echo "Storing removed _vimrc as _vimrc_old"
move %userprofile%\_vimrc %userprofile%\_vimrc_old

:: copy vim conf from repo to desired paths
echo "Copying setup .vimrc to:" %userprofile%
copy .vimrc %userprofile%
echo "Copying vim directory to .config folder"
mkdir %userprofile%\.config
robocopy vim %userprofile%\.config\vim /E

:: create plugin directory
echo "Making Plugged Directory, where all plugins from git will be stored"
mkdir %userprofile%\.vim\plugged

:: create undo directory
echo "Creating Undo Directory, where undohistory will be saved. so you can undo even after you have closed the file."
mkdir %userprofile%\.vim\undo-dir

:: create autoload directory
echo "Creating autoload directory for vim plug - Plugin Manager"
mkdir %userprofile%\vimfiles\autoload

:: copy vim plug - Plugin Manager
echo "Copying plug.vim to autoload directory so it loads as vim loads"
copy plug.vim %userprofile%\vimfiles\autoload\

:: coc configs
echo "Copying coc-settings.json to autoload directory so it loads as vim loads. it contains some coc prefs"
copy coc-settings.json %userprofile%\vimfiles\autoload\

:: Need chocolatey for installing other software
echo "Installing Chocolatey Package Manager"
Powershell.exe -executionpolicy bypass -File choco_install_powershell.ps1

:: node
echo "Installing Node"
start cmd /k choco install nodejs.install -y

:: fzf - fuzzy file search
echo "Installing FZF"
start cmd /k choco install ripgrep -y

:: rg - fuzzy text search
echo "Installing Ripgrep"
start cmd /k choco install fzf -y

:: bat = cat + colors
echo "Installing BAT"
start cmd /k choco install bat -y

:: lazygit - git ui for command line. compatible with vim as well.
echo "Installing Lazygit"
start cmd /k choco install lazygit -y

:: installing plugins
echo "Make sure to run `:PlugInstall` in Vim once the setup is done."
echo "Trying to run PlugInstall automatically"
vim -s install_plugins.txt

:: FIN
echo "You can terminate all Command Prompts Now"
pause
