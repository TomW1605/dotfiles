update:
	git pull

install:
	echo . ~/dotfiles/files/exports >> ~/.bashrc
	echo . ~/dotfiles/files/functions >> ~/.bashrc
	echo . ~/dotfiles/files/aliases >> ~/.bashrc
	echo . ~/dotfiles/files/shopt >> ~/.bashrc
	. ~/.bashrc
