#/bin/bash

echo git
ln -s ~/bin/dotfiles/git/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo mate
ln -s /Applications/TextMate.app/Contents/Resources/mate ~/bin/mate
ln -s mate ~/bin/mate_wait