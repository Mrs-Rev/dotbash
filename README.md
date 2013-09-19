dotbash
=======
My .bash git repository.

Installation:
-------------
	git clone git://github.com/Mrs-Rev/dotbash.git ~/.bash

Remove these files:

	cd ~
	rm .bashrc
	rm .bash_profile
	rm .profile

Create symlinks:

	cd ~
	ln -s .bash/.bashrc .bashrc 
	ln -s .bash/.bash_profile .bashrc_profile
	ln -s .bash/.profile .profile

Colors can be adjusted by the terminal application preferences.
The font weight is adjusted in the .dir_colors

	ln -s .bash/.dir_colors .dir_colors_NO_BOLD

