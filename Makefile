# This Makefile is used for installing vimrc and zshrc from github
remote = git://github.com/dylanzhang/dotfiles.git
vundle = git://github.com/gmarik/vundle.git
local = ~/.dotfiles

install-all: download zsh vim
install-zsh: download zsh
install-vim: download vim

download:
	@rm -rf $(local)
	git clone --recursive -q $(remote) $(local)

zsh:
	ln -fs $(local)/zshrc ~/.zshrc

# depend on ctags, which is in exuberant-ctags in debian and ubuntu
vim:
	ln -fs $(local)/vimrc ~/.vimrc
	@rm -rf ~/.vim/bundle/vundle
	git clone -q $(vundle) ~/.vim/bundle/vundle
	@vim +BundleInstall +qall
	@mkdir -p ~/.vim/undo
	@cp -r $(local)/snipmate-snippets/snippets ~/.vim/bundle/snipmate-snippets
