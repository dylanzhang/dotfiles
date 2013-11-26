#!/bin/bash
#
# Program:
#   This script is used for configuring my system with default settings
#
# Last modified:
#   2013-11-22 Fri 10:56 PM
#

# TODO: make this file useful for general usage
#   Show a list of tasks, let user select which to execute
#   Purpose: vim, zsh, font, related softwares

echo 'This script is used for '
vundle=git://github.com/gmarik/vundle.git
oh_my_zsh=git://github.com/robbyrussell/oh-my-zsh.git

rm -rf $(local)
git clone --recursive -q $(remote) $(local)

ln -fs $(local)/zshrc ~/.zshrc
git clone -q $(oh_my_zsh) ~/.oh-my-zsh

ln -fs $(local)/vimrc ~/.vimrc
rm -rf ~/.vim/bundle/vundle
git clone -q $(vundle) ~/.vim/bundle/vundle
vim +BundleInstall +qall
