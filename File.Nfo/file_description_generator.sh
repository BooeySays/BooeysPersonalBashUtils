#!/bin/bash

mkfnfo(){
ftFILE="$@";
touch "./.$ftFILE";
echo -e "\n\e[31mＤａｔｅ  ｏｆ  Ｃｒｅａｔｉｏｎ\e[37m：\e[m\n$(date)" >> ./.$ftFILE.NFO;
echo;

echo -e "\n\e[31mＦｉｌｅｎａｍｅ\e[37m：\e[m\n$ftFILE" >> ./.$ftFILE.NFO;
echo;
clear;
echo;
echo;
read -p 'What type of file is this ?: ' -r ftTYPE;
echo -e "\n\e[31mＴｙｐｅ  ｏｆ  ｆｉｌｅ\e[37m：\e[m\n$ftTYPE" >> ./.$ftFILE.NFO;
echo;
clear;
echo;
echo;
read -p 'Briefly descrobe the file ?: ' -r ftDESC;
echo -e "\n\e[31mＤｅｓｃｒｉｐｔｉｏｎ\e[37m：\e[m\n$ftDESC" >> ./.$ftFILE.NFO;
echo;
clear;
echo;
echo;
echo -e "A NFO file has been created for $ftFILE. To access it, run fnfo <filename> while you are in the same directory as the file and its NFO file.";
echo;
echo;
echo;
echo;
}

fnfo(){
fdFILE="$@";
if [ -f ./.$fdFILE.NFO ]; then
	clear;
	echo;
	echo;
	cat ./.$fdFILE.NFO;
	echo;
	echo;
else
	clear;
	echo; echo;
	echo -e "ERROR - Unable to locate the fNFO file for $fdFILE";
	echo;
	echo -e "Please run \e[31mmkfnfo <Filename>\e[m to create one";
	echo; echo;
fi
}




