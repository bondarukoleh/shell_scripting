#!/usr/bin/env bash

function implicitCode(){
    ls
    cat aaa
}

implicitCode
echo "implicitCode function returned - $?"

function explicitCode(){
    if [ -e `pwd`/scripts ]
    then 
        return 0
    else
        return 1
    fi
}

explicitCode
echo "explicitCode function returned - $?"
