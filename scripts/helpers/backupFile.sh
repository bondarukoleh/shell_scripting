#!/usr/bin/env bash

function backUp(){
    if [ -f $1 ]
    then
        # local BACKUP_FILE_PATH=`pwd`/data/$(basename ${1}).$(data +%F).$$
        local BACKUP_FILE_PATH=`/home/oleh/work/shell_scripting/data/$(basename ${1}).$(data +%F).$$
        echo $BACKUP_FILE_PATH
    fi
}

backUp