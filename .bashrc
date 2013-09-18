# .bashrc : read and executed by Bash every time you start a subshell (including when you scp to this host)

# Source global definitions
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# PATH changes if necessary 
case ${HOSTNAME} in
	baskerville)
		export PATH=$PATH:/usr/local/mariadb/bin/
		;;
	watson)
		export PATH=$PATH:/usr/local/mariadb/bin/
		;;
esac

# LIBRARY PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
#export PER5LIB=/usr/local/lib:$PERL5LIB

# Set a useful PS1 prompt...
# ... check the command status and print ✔' or ✘
# 	\$(if [ \$? -eq 0 ]; then echo '\[\033[01;32m\]✔'; else echo '\[\033[01;31m\]✘'; fi)
# ... check to see if uid is 0 ie. root, if so change color to red otherwise user is green
#	\$(if [ \$(id -u) -eq 0 ]; then echo '\[\033[00;31m\]'; else echo '\[\033[00;32m\]'; fi)\u@\h
# ... if in a git repository show the current branch within parenthesis
#	\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/(\1)/') 
#	\$(git branch 2>/dev/null | grep -e '\* ' | awk '{ print \$2 }')
# ... return to normal font color
#	\[\e[0m\] \$
# ... COLORS
#	\[\033[xx;xxm\]
#                  ^---	0 = black, 1=red, 2=green, 3=brown, 4=blue, 5=purple, 6=cyan
#	        ^------	0=normal, 1=bold, 4=underscore, 5:blink, 7=inverse, 8=conceal
#export PS1="\$(if [ \$? -eq 0 ]; then echo '\[\033[00;32m\]✔'; else echo '\[\033[00;31m\]✘'; fi)  \t \$(if [ \$(id -u) -eq 0 ]; then echo '\[\033[00;31m\]'; else echo '\[\033[00;32m\]'; fi)\u@\h \[\033[00;34m\]\w \[\033[0;31m\]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/(\1)/') \[\e[0m\]\$ "
export PS1="\$(if [ \$? -ne 0 ]; then echo '\[\033[00;31m\]✘ '; fi)\$(if [ \$(id -u) -eq 0 ]; then echo '\[\033[00;31m\]'; else echo '\[\033[00;32m\]'; fi)\u@\h \[\033[00;34m\]\w\[\033[0;31m\]\$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/(\1)/') \[\e[0m\]\$ "

# Set the default editor to vim.
export EDITOR=vim
 
# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups
 
# Append commands to the bash command history file (~/.bash_history)
# instead of overwriting it.
shopt -s histappend
 
# Append commands to the history every time a prompt is shown,
# instead of after closing the session.
PROMPT_COMMAND='history -a'
