#!/bin/bash

CDANDLS(){
builtin cd "$@";
ls;
echo;
echo -e "[ $PWD ]";
}

# creates alias for CDANDLS named cd, so when you use
# cd, it will changr dirs like normal, but is actually
# running this function.
alias cd='CDANDLS';
