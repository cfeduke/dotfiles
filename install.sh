#/bin/bash

echo bash
ln -s ~/bin/dotfiles/bashrc ~/.bashrc
curl -s https://github.com/xvzf/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt

echo git
ln -s ~/bin/dotfiles/git/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

echo mate
ln -s /Applications/TextMate.app/Contents/Resources/mate ~/bin/mate
ln -s mate ~/bin/mate_wait

echo ruby
ln -s ~/bin/dotfiles/ruby/.irbrc ~/.irbrc