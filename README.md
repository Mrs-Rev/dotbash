dotbash
=======
My .bash git repository.

Installation:
-------------
	git clone https://github.com/Mrs-Rev/dotbash.git ~/.bash

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

If you are not fond of the font and colors used by bash ...
Colors can be adjusted by the terminal application preferences.
And, the font weight is adjusted in the .dir_colors
The original color file is /etc/DIR_COLORS

	ln -s .bash/.dir_colors_NO_BOLD .dir_colors

Mail forwarding (pick one):

	ln -s .bash/.forward_production .forward
	ln -s .bash/.forward_test .forward
