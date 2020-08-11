echo off
echo "Copying .vimrc to:" %userprofile%
cp .vimrc %userprofile%
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
pause
