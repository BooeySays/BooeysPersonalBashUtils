##################################################
#
#	[31mFILE:[01;37m	AMPM.sh
#	[31mTYPE:[m	bash
#	[31mDESC:[m	Script to print out the time in 12
#		hour format, with a yellow AM or a
#		blue PM.
#	[31mINST:[m	Call the time with 3$TimeAmPmZone
#
##################################################


# prints out time as HH:MM:SS
HHMMSS=$(date +"%l:%M:%S")

# prints out time zone
TimeZone=$(date +"%Z")

# Prints out a yellow AM or a blue PM
AMPM=$(if [ "$(date +"%H")" < 12 ]; then echo -e -n "\e[01;33mAM\e[m"; else echo -e -n "\e[01;34mPM\e[m"; fi)

TimeAmPmZone=$(echo -e -n "🕖️ "; echo -e -n "$HHMMSS";echo -e -n " $AMPM"; echo -e -n " \e[31m$TimeZone\e[m")
[31mhi[m

echoTime(){
echo -e -n "$TimeAmPmZone";
}
