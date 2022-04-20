# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then
	#echo GNU ls
    colorflag="--color=auto"
else
	#echo macOS ls
    colorflag="-G"
fi

#colours output
alias ls='ls -Ah ${colorflag}'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias c='clear'

#moving up shortcuts
alias cd..='cd ../'
alias ..='cd ../'

alias top="htop"

#get external ip
#alias ip="curl http://ipecho.net/plain; echo"

#i often make this by mistake
alias gerp='grep'

#print each part of the $PATH variabl on a seprate line
alias path='echo -e ${PATH//:/\\n}'

#make stuff safe
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

#set up nano with auto indent and no warp
#alias nano='nano -wi'

alias open='openc'

alias cask='brew'

alias cc='cco'

alias nano='nanoc'

alias dot='cd ~/dotfiles/'
alias aliases='vim ~/dotfiles/source/aliases.sh; . ~/dotfiles/source/aliases.sh'
alias exports='vim ~/dotfiles/source/exports.sh; . ~/dotfiles/source/exports.sh'
alias inputrc='vim ~/dotfiles/source/inputrc.sh; . ~/dotfiles/source/inputrc.sh'
alias functions='vim ~/dotfiles/source/functions.sh; . ~/dotfiles/source/functions.sh'
alias personal='vim ~/dotfiles/source/personal.sh; . ~/dotfiles/source/personal.sh'

#this is for the Intro to Software Eng unit i did sem 1 2018
alias junit='java -ea org.junit.runner.JUnitCore'

alias subsync='subshift sync'

alias dir='pwd'

#easaly stop her netflix playing
alias pause='cliclick kp:space'
alias mute='osascript -e "set Volume 0"'
