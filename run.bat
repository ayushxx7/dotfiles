echo off
echo "Copying .vimrc to:" %userprofile%
cp .vimrc %userprofile%
echo "Copying vim directory to .config folder"
mkdir %userprofile%\.config
robocopy vim %userprofile%\.config\vim /E
echo "Making Plugged Directory, where all plugins from git will be stored"
mkdir %userprofile%\.vim\plugged
echo "Creating Undo Directory, where undohistory will be save. so you can undo even after you have closed the file."
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
start cmd /k choco install node -y
echo "Installing FZF"
start cmd /k choco install ripgrep -y
echo "Installing Ripgrep"
start cmd /k choco install fzf -y
echo "Killing all cmds"
call getCmdPID
set "current_pid=%errorlevel%"
for /f "skip=3 tokens=2 delims= " %%a in ('tasklist /fi "imagename eq cmd.exe"') do (
    if "%%a" neq "%current_pid%" (
        TASKKILL /PID %%a /f >nul 2>nul
    )
)
pause
