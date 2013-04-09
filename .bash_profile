source ~/.bashrc

#### list view alias
alias ll='ls -laG'
alias size='du -P -skh *'
alias l.='ls -dl .* --color=auto'

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
export HISTIGNORE="cd:exit:..:...:ll:ls:l."
# this pipes all defaults commands in txt document to keep track of all used defaults changes
PROMPT_COMMAND='echo "$(history 1 | grep "defaults")" | sed '/^$/d' >> ~/Dropbox/Dokumente/defaults_MacbookPro.txt'
