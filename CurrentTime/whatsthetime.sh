#!/bin/bash

yelloworblue(){			# when yelloworblue is executed
if [ $(date +%H) -le 12 ]	# and if current hours is between 0 - 12
then				# then
echo -e "\e[01;33mAM\e[m";	# print AM in yellow on the screen
else				# otherwise
echo -e "\e[01;34mPM\e[m";	# print PM in blue on screen
fi
}
echo -e "\e[37m"$(date +%-l)"\e[31m:\e[37m`date +%M`\e[31m:\e[37m`date +%S`\e[m $(yelloworblue)"

# Prints a few things on screen:
#	- the curren hour (12hrs format) in white
#	- red colon
#	- current mins in white
#	- red colon
#	- current seconds in white
#	- executes yelloworblue
