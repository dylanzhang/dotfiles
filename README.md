My dotfiles
========

This repository is used for fast configure a new machine's operating environment to suit myself.

You are welcome to fork and change it as your purpose.

Of course, you are also welcomed to use it if you would like to.

Setup
--------

Before use this repository, you'd better make sure git is installed in your OS.

- Install git

    To install git, use :

        sudo apt-get install git

    (I'm sorry, I only have Debian and Ubuntu in use, so if you're using other Linux distributions, please change the command and the install.sh scipt to suit your OS.)

- Clone the repo

        git clone https://github.com/dylanzhang/dotfiles.git ~/.dotfiles

    Now the repository is cloned into your ~/.dotfiles directory.

- Execute the script

    Now that you have the repository in your local directory.
    Then:

        cd ~/.dotfiles
        bash install.sh

    There may show you some errors notice when installing vimrc, don't worry, it's OK.

Congratulations, your computer is successfully configured with perfect vim and zsh!

**Notice: zsh will be in use the next time you login your Linux.**

How to use
--------

If you are not sure how to use vim and zsh of my configuration, please read VimCheatSheet.md and ZshCheatSheet.md

Enjoy your coding! :)
