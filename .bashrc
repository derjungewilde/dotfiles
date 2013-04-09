#### Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'


#### misc alias
alias ll='ls -laG'
alias l.='ls -dl .* --color=auto' #show only hidden files
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

alias df='df -h' # Show disk usage
alias size='du -P -skh *' # Lists folders and files sizes in the current folder

alias h=history
alias top='top -o cpu' # sort by cpu usage

alias psaux='ps aux'
alias systail='tail -f /var/log/system.log' 
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr" # Shows most used commands
alias untar="tar xvzf"

alias cp_folder="cp -Rpv" #copies folder and all sub files and folders, preserving security and dates




killhard() {
    kill -9 "$1"
}



#### fix double open with entries 
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch";open -a XtraFinder'



#### After each command, checks the windows size and changes lines and columns
shopt -s checkwinsize 



#### note: bind is used instead of setting these in .inputrc.  This ignores case in bash completion
bind "set completion-ignore-case on"



#### this allows you to automatically show completion without double tab-ing
bind "set show-all-if-ambiguous On" 



#### Colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 



#### MacPorts Installer addition on 2011-07-30_at_19:15:20: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
#### Finished adapting your PATH environment variable for use with MacPorts.



#### change history options
HISTFILESIZE=1000000000 HISTSIZE=1000000

#Ignore some commands in history
export HISTIGNORE="cd:exit:..:...:ll:ls:l."

# this pipes all defaults commands in txt document to keep track of all used defaults changes
PROMPT_COMMAND='echo "$(history 1 | grep "defaults")" | sed '/^$/d' >> ~/Dropbox/Dokumente/defaults_MacbookPro.txt'

# use hf and the word to search in the history
hf(){ 
  grep "$@" ~/.bash_history
}


#### Bring in the other files
. ~/.bashrc_help

