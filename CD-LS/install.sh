#!/bin/bash

if [ -n BOOEYSAYS ]; then
	if [ -d "$66Bins" ]; then
		cp -r LS_after_CD.sh $66Bins/;
	fi
else
	echo "There are some files missng... Have you installed the prereq?";

fi

echo '### CDANDLS ###' >> ~/.66mhz_aliases;
if [ -f ~/.66mhz_aliases ]; then
	cat lines2cat >> ~/.66mhz_aliases;
fi
echo '### CDANDLS ###' >> ~/.66mhz_aliases;

