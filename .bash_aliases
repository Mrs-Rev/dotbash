# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
 
alias sudo='sudo -E'
# Add some easy shortcuts for formatted directory listings and add a touch of color.
alias ll='ls -lF --color=auto'
alias la='ls -alF --color=auto'
alias lad='ls -adlF --color=auto'
alias ls='ls -F --color=auto'
 
# Make grep more user friendly by highlighting matches
# and exclude grepping through .git folders.
alias grep='grep --color=auto --exclude-dir=\.git'

# black and white vim
alias vimbw="vim -T vt100 "

# my shortcuts to the source directory
alias cdsrc="cd /keystone/src/"
alias cdrk="cd /home/kim/src/keystone/"
alias cdrr="cd /home/kim/src/RevII_keystone/"
alias cdrn="cd /home/kim/src/news/"
alias cdrp="cd /home/kim/src/calendar/"
alias cdcrn="cd /keystone/config/_keystone_sherlock_Rev_keystone/"
alias cdsherlock="cd /keystone/sherlock/"
alias cdbeta="cd /keystone/src/BETA/"

# printout once lp is setup
alias lpcsc="lp -d rm1104 -s "

# count files in directory
alias count_files="find . -type f | wc -l"

# aliases for hosts
case ${HOSTNAME} in
	moriarty)
		alias tail_apache_a="tailf /usr/local/apache2/logs/*access_log"
		alias tail_apache_e="tailf /usr/local/apache2/logs/*error_log"
		;;
	keystone-dev)
		alias tail_apache_a="tailf /usr/local/apache2/logs/access_log"
		alias tail_apache_e="tailf /usr/local/apache2/logs/error_log | grep -Ev '\[debug] ssl'"
		;;
esac

# Add bash aliases.
if [ -f ~/.bash_aliases_toolbox ]; then
	echo "openToolBox            ...alias to set additional very handy aliases"
	alias openToolBox="source $HOME/.bash_aliases_toolbox"
fi
