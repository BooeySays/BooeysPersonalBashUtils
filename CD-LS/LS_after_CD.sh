#!/bin/bash

cd(){
builtin cd "$@";
ls;
echo;
echo -e "[ $PWD ]";
}

