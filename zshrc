# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"
ZSH_THEME="af-magic"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git debian fasd web-search Autojump)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Some new environmental variables
export PATH=$HOME/algs4/bin:$HOME/bin:$PATH
export HISTSIZE=100

# Some aliases
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias clang++='clang++ -std=c++11'
alias g++='g++ -std=c++0x'
alias rm='rm -i'
alias grep='grep --color=auto'
alias tmux='tmux -2'

# Open these files use defined program
alias -s py=vi
alias -s c=vi
alias -s cc=vi
alias -s cpp=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

# Some conflicted aliases
unalias ar

# Get my ip address easily
alias myip="/sbin/ifconfig eth0 2>/dev/null | grep 'inet addr' | sed 's/^.*addr://g' | sed 's/Bcast.*$//g'"
export MYIP=$(myip)

# Start tmux on every shell login
# If not running interactively, do not do anything
[[ $- != *i* ]] && return

# Start only one session on login, try attach at first, only create a session if no tmux is running
# Test wheter tmux exists
if which tmux 2>&1 > /dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux -2 attach || tmux -2 new-session)
fi
