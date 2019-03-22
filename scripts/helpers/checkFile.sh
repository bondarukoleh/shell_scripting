#!/usr/bin/env bash

PATH_TO_FILE=$1

[ -d $PATH_TO_FILE ] && echo "$PATH_TO_FILE - File is directory" && exit 0
[ -r $PATH_TO_FILE ] && echo "$PATH_TO_FILE - regular file" && exit 0
[ -e $PATH_TO_FILE ] && echo "$PATH_TO_FILE - existing, but not regular or directory" && exit 1
echo "$PATH_TO_FILE - not existing" && exit 2