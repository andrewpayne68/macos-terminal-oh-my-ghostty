#!/usr/bin/env zsh


echo 'start updating ...'

echo 'updating homebrew'
brew update
brew upgrade
brew cleanup
#brew untap homebrew/core
#brew untap homebrew/cask


echo ' '
echo 'checking updates for App Store apps'
mas list
mas upgrade

echo ' '
echo 'checking Apple Updates'
/usr/sbin/softwareupdate -ia

echo ' '
read "confirm?Press RETURN to continue..."

exit
