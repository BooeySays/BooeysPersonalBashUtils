#!/bin/bash

CDANDLS(){
cd "$@";
ls;
echo;
echo -e "[ $PWD ]";
}
alias cd='CDANDLS';
