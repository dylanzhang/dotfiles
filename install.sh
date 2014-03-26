#!/bin/bash
#
# Program:
#   This program is used for install some useful configurations in
#       a newly installed Debian or Ubuntu system
# Author:
#   Dylan Zhang
# Email:
#   amzhang.ustc@gmail.com
# Last modified:
#   2013-11-26 Tue 02:14 PM
#

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH

echo
echo '=========================================================================='
echo '= This script is used for configuring vim and zsh for Debian and Ubuntu'
echo '=========================================================================='
echo
echo '=========================================================================='
echo '= Which widget of the following would you like to install ? (Ctrl-C to abort)'
echo '=========================================================================='
echo

echo '1. Vimrc and related vim plugins      Enter [1]'
echo
echo '2. Zshrc and oh-my-zsh framework      Enter [2]'
echo
echo '3. Tmux and its config files          Enter [3]'
echo
echo '4. All of the above                   Enter [4]'
echo
echo '5. Nothing to do                      Enter [5]'
echo

read -p 'Please enter your choice [1] or [2] or [3] or [4] or [5] Enter : ' choice

echo
echo '=========================================================================='

if [ "$(whoami)" == "root" ]; then
    if_sudo=""
else
    if_sudo="sudo"
fi

function install_vim_rc() {
    echo
    echo '================================================================'
    echo '= Configuring vimrc ...'
    echo '================================================================'
    echo

    vundle=git://github.com/gmarik/vundle.git

    if [ ! -e "$(which vim)" ]; then
        ${if_sudo} apt-get install ctags vim
    fi

    ln -fs $(pwd)/vimrc ~/.vimrc
    rm -rf ~/.vim/bundle/vundle
    mkdir -p ~/.vim/bundle
    git clone -q ${vundle} ~/.vim/bundle/vundle
    vim +BundleInstall +qall
}

function install_zsh_rc() {
    echo
    echo '================================================================'
    echo '= Configuring zshrc ...'
    echo '================================================================'
    echo

    oh_my_zsh=git://github.com/robbyrussell/oh-my-zsh.git

    if [ ! -e "$(which zsh)" ]; then
        ${if_sudo} apt-get install zsh
    fi

    ln -fs $(pwd)/zshrc ~/.zshrc
    git clone -q ${oh_my_zsh} ~/.oh-my-zsh
    chsh -s $(which zsh)
}

function install_tmux() {
    echo
    echo '================================================================'
    echo '= Configuring tmux ...'
    echo '================================================================'
    echo

    if [ ! -e "$(which zsh)" ]; then
        ${if_sudo} apt-get install tmux
    fi

    ln -fs $(pwd)/tmux.conf ~/.tmux.conf
}

case $choice in
    "1" )
        install_vim_rc
        ;;
    "2" )
        install_zsh_rc
        ;;
    "3" )
        install_tmux
        ;;
    "3" )
        install_vim_rc
        install_zsh_rc
        install_tmux
        ;;
    * )
        exit 0
        ;;
esac

echo
echo '================================================================'
echo '= Done'
echo '================================================================'
echo
