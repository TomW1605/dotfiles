#open current folder unless specifyed
openc() {
    if [[ -z "$@" ]]; then
        command open .
    else
        command open "$@"
    fi
}

#get in and out of root
root() {
    if [ "$(id -u)" == "0" ]; then
        command exit
    else
        command sudo su
    fi
}

#make the cc command automaticly name the file the same as the suplyed file
cco() {
    command cc "$@" -o `echo "$@" | cut -d'.' -f1`
    if [ "$?" == "0" ]; then
        command ./`echo "$@" | cut -d'.' -f1`
    fi
}

#make nano add a template to c files
nanoc() {
	if [[ "$@" == *.c ]]; then
		if [ -s "$@" ]; then
			command nano -wi "$@"
		else
			command cat ~/dotfiles/files/.ctemp > "$@"
			command nano -wi "$@"
		fi
	else
		command nano -wi "$@"
	fi
}

#print the local and global ip adress
ip() {
	command ip $@
	#echo "Local: `ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'`"
	#echo "Global: `curl http://ipecho.net/plain 2>/dev/null`"
}

volume() {
    command osascript -e "set Volume $@"
}

hideuser() {
	export PS1=$NO_USER_PS1
}

showuser() {
	export PS1=$USER_PS1
}

swap() {
	mv "$1" "$1.tmp"
	mv "$2" "$1"
	mv "$1.tmp" "$2"
}

mkalias() {
	echo "alias $1='$2'" >> ~/dotfiles/source/personal.sh
	. ~/dotfiles/source/personal.sh
}

ssh_new() {
	ssh-copy-id $1 &>/dev/null
	ssh $1
}
