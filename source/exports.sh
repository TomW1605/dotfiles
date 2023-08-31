#export colour options for both types of ls
#export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

#remove quotes from files with spaces in ls
export QUOTING_STYLE=literal

#if [ "$(id -u)" == "0" ]; then
#    export SUDO_PS1="\[\e[1;91m\]\u@\h \w $ \e[m\]"
#else
#    export PS1="\[\e[1;92m\]\u@\h \w $ \e[m\]"
#fi

PS1_RED='\[\033[1;31m\]'
PS1_GREEN='\[\e[1;32m\]'
PS1_BLUE='\[\e[1;34m\]'
PS1_CYAN='\[\e[1;36m\]'
PS1_CLEAR='\[\e[m\]'

PS1_TIME='\t'
PS1_USER='\u'
PS1_HOST='\h'
#LOCATION='`dirs +0 | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1...\2#g"`'
PS1_LOCATION='`dirs +0 | sed "s#\(/[^/]\{1,\}/\).*\(/[^/]\{1,\}\)/\{0,1\}#\1...\2#g"`'
PS1_END='$'

export USER_PS1=$PS1_CYAN$PS1_TIME' '$PS1_GREEN$PS1_USER'@'$PS1_HOST' '$PS1_BLUE$PS1_LOCATION' '$PS1_END$PS1_CLEAR' '
export NO_USER_PS1=$PS1_CYAN$PS1_TIME' '$PS1_GREEN$PS1_HOST' '$PS1_BLUE$PS1_LOCATION' '$PS1_END$PS1_CLEAR' '
export PS1=$USER_PS1
export SUDO_PS1=$PS1_RED$PS1_TIME' '$PS1_USER'@'$PS1_HOST' '$PS1_LOCATION' '$PS1_END$PS1_CLEAR' '

#old bash prompts
#export SUDO_PS1="\\[\e[1;91m\\]\u@\h\\[\e[m\] \\[\e[1;94m\\]\w $\\[\e[m\\] "
#export PS1="\\[\e[1;92m\\]\u@\h\\[\e[m\] \\[\e[1;94m\\]\w $\\[\e[m\\] "

export PROMPT_COMMAND='history -a ; $PROMPT_COMMAND'

