#!/bin/bash

# To keep everything seperate from the system's initial
# settings, this script will create and set up its own
# bin directory, aliases file, paths, and will add any
# additional lines that will affect the systrm into
# those files.
#
# In addition to making it easier to revert back to the
# system's original settings, this will also make it
# easier to install and set up any scripts from this
# repo.

if [ -f ~/.66mhz_aliases ]; then
	echo -e "File found";
	else
	echo -e "File NOT Found";	
	read -p 'Press any key to continue and create the file, or hit [CTRL] + [C] to cancel/quit';	
	echo -e -n "[ ]	Creating ~/.66mhz_aliases\r";
	echo "#!/bin/bash" > ~/.66mhz_aliases; sleep 2;
	echo -e "\e[37m[✅]\e[m";
fi

echo -e "System now has ~/.66mhz_aliases";

if [ -f ./installdir ]; then
	. ./installdir;
fi

echo -e "Figuring out where to add the line that will call ~/.66mhz_aliases";
echo;
echo -e "Searhing for ~/.bashrc";
if [ -f ~/.bashrc ]; then
	echo -e "File Found";
	echo;
	echo -e "Adding one line to the end of the file";
	cat ./if66mhz >> ~/.bashrc;	
