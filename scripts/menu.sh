#!/usr/bin/env zsh

while :

clear

fastfetch -c archey.jsonc

echo " "
echo "1. Update Brew, Apps and System"
echo "2. Install Brew Apps"
echo "3. Midnight Commander (mc)"
echo "4. Matrix Screensaver (CTRL-CMD-F Fullscreen)" 
echo "5. Mole (Deep clean and optimise your Mac)"
echo "6. Fastfetch (all)"
echo " "
echo "X. Exit"
echo " "
read "choice?Option: "
echo " "

do

case $choice in

    1)  ~/scripts/update.sh
        ;;
    2)  ~/scripts/brewapps.sh
        ;;    
    3)  mc
        ;;
    4)  cmatrix
        ;;
    5)  mo
        ;;
    6)  fastfetch
        echo " "
        read -s -k '?Press any key to continue.'

        ;;
    m)  mo
        ;;
    x)  exit
        ;;
esac


done




