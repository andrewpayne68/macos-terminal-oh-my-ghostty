#!/usr/bin/env zsh

while :

clear

fastfetch -c archey.jsonc

echo " "
echo "1. Install Homebew (fresh install)"
echo "2. Install All Recommend Apps"
echo "3. Install Ollama"
echo "4. Install Open-WebUI" 
echo "5. Start Ollama and Open-WebUI"
echo "6. Fastfetch (all)"
echo " "
echo "X. Return to Main Menu"
echo " "
read "choice?Option: "
echo " "

do

case $choice in

    2)  clear
        echo 'INSTALL BREW APPS'
        echo '================='
        echo ' '
        echo 'fastfetch'
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
        echo 'Mole'
        echo 'eza replacement for ls (eza -lao)'
        echo " "
        brew install fastfetch
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
        brew install Mole
        brew install eza
        echo " "
        read "confirm?Press RETURN to continue..."
        ;;
    1)  clear
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        read "confirm?Press RETURN to continue..."
        ;;    
    3)  clear
        brew install ollama pipx
        read -s -k '?Press any key to continue.'
        ;;
    4)  clear
        pipx install --fetch-python=missing --python 3.11 open-webui --force
        pipx ensurepath
        read "confirm?Press RETURN to continue..."
        ;;
    5)  clear
        brew services restart ollama && nohup open-webui serve &>/tmp/open-webui.log &
        $(read -u 1 -t 5)

        open "http://localhost:8080"
        read -s -k '?Press any key to continue.'
        ;;
    6)  clear
        fastfetch
        echo " "
        read -s -k '?Press any key to continue.'
        ;;
    f)  clear
        fastfetch
        echo " "
        read -s -k '?Press any key to continue.'
        ;;
    m)  mo
        ;;

    x)  exit
        ;;
esac


done














