#!/usr/bin/env zsh

while :

clear

fastfetch

echo "1. Update Brew, Apps and System"
echo "2. Install Brew Apps"
echo "3. Midnight Commander (mc)"
echo "4. Matrix Screensaver (CTRL-CMD-F Fullscreen)" 
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
    x)  exit
        ;;
esac


done




