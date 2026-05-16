#!/usr/bin/env zsh
clear
echo 'INSTALL BREW APPS'
echo '================='
echo ' '
echo 'neofetch'
echo 'mas (Mac App Store)'
echo 'cask (GUI App Manager)'
echo 'htop (Resource Monitor CLI)'
echo 'wget (Githib clone downloader)'
echo 'glances (Another Resource Monitor CLI)'
echo 'midnight-commander (File Manager CLI) - run as mc'
echo 'tree (Shows Directory Tree)'
echo 'cmatrix (Matrix Screensaver)'
echo 'Visual Studio Code'
echo 'WiFi-Password'
echo " "
brew install neofetch
brew install mas
brew install cask
brew install htop
brew install wget
brew install glances
brew install midnight-commander
brew install tree
brew install cmatrix
brew install --cask visual-studio-code
brew install wifi-password
echo " "
read "confirm?Press RETURN to continue..."


exit 0
