echo "Installing Node"
choco install nodejs.install -y
echo "Installing FZF"
choco install ripgrep -y
echo "Installing Ripgrep"
choco install fzf -y
echo "Installing BAT"
choco install bat -y
echo "Install GVIM"
choco install vim
echo "Performing Plugin Installation"
gvim -c ":PlugInstall"
echo "Make sure to run `:PlugUpdate` after the setup is complete"
echo "You can terminate all Command Prompts Now"
