# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME=/opt/java/jdk
export PATH=$JAVA_HOME/bin:$PATH

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
export PATH="/usr/local/opt/mysql-client/bin:$PATH"


# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="cloud"
#ZSH_THEME="alanpeabody"

# ZSH_CUSTOM=/path/to/new-custom-folder

# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#source /usr/share/oh-my-zsh/oh-my-zsh.sh
#source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# export LANG=en_US.UTF-8

#Funciones

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi



# pack unpack
extract (){
	if [ -f $1 ]; then
		case $1 in
			*.tar.bz2)	tar xvjf $1 ;;
			*.tar.gz)	tar xvzf $1 ;;
			*.bz2)		bunzip2 $1 ;;
			*.rar)      	rar x $1 ;;
			*.gz)	   	gunzip $1 ;;
			*.tar)		tar xvf $1 ;;
			*.tbz2)		tar xvjf $1;;
			*.tgz)		tar xvzf $1 ;;
			*.zip)		unzip $1 ;;
			*.Z)		uncompress $1 ;;
			*.7z)		7z x $1 ;;
			*)	echo "No se reconoce el tipo de archivo '$1'...";;
		esac
	else
		echo "'$1' el archivo no es valido!"
	fi
}



# Alias
alias rz='source ~/.zshrc'
alias servicios='sudo systemctl list-unit-files --state=enabled'
alias peso='du -sh * .[A-z0-9]* | sort -n'
alias v="nvim"
alias z="sudo nvim ~/.zshrc"
alias rm="rm -rf"

# Arch
alias s="sudo nvim ~/.config/sxhkd/sxhkdrc"
alias b="sudo nvim ~/.config/bspwm/bspwmrc"
alias w="wal -q -i ~/wallpapers/"
alias reloj="tty-clock -c -C 4"
alias pacsu='sudo pacman -Syyu'                 # update only standard pkgs
alias yaysu='yay -Syu --noconfirm'              # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages
alias cleanyay="yay -Sc --aur"
#alias cat="bat"
#alias catn="/bin/cat"

# git
alias addup='git add -u'
alias add='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'



