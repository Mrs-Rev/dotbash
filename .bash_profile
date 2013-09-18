# .bash_profile is read and executed only when you start a login shell (that is, when you log in to the system).
#
# Load .profile, containing login, non-bash related initializations.
source ~/.profile
 
# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc

# Enable programmable completion features.
if [ -f /etc/bash_completion ]; then
	source /etc/bash_completion
fi

# Add bash aliases.
if [ -f ~/.bash/.bash_aliases ]; then
 	source ~/.bash/.bash_aliases
fi

# Use tab completion
#complete

