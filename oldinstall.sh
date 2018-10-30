cd ~/

if [ -d "~/dotfiles/.git" ]; then
	git pull
else
	git clone https://github.com/TomW1605/dotfiles.git
fi


