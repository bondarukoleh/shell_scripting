#!/usr/bin/env bash

function ifSuccess(){
    if [ $1 -eq 0 ]
    then
        echo "Backup succeeded!"
    else
        echo "Backup failed!!!"
        return 1
    fi
}

function backUp(){
    if [ -f $1 ]
    then
        local BACKUP_FILE_PATH="`pwd`/data/backup/$(basename ${1})_backuped.$(date +%F).$$"
        cp $1 $BACKUP_FILE_PATH
        ifSuccess $?
    else
        echo "$1 - is not a file!"
        return 1
    fi
}

backUp $1