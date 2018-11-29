#!/bin/bash

mkdir(){
mkdir -p "$@";
builtin cd "$@";
echo -e "#\tNAME:\t$@" >> ./.dirnfo;
echo 'Description (What is in this directory?)';
read -p ' :  ' -r DIRDESC;
echo -e "#\tDESC:\t$DIRDESC" >> ./.dirnfo;
}

cd(){
unset cd;
unalias cd;
builtin cd "$@";
if [ -f ./.dirnfo ]; then
cat ./.dirnfo; ls;
echo;
else
echo -e " DIR:\t$(dirs)";
echo;
fi
}
