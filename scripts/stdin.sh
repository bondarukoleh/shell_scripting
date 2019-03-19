#!/usr/bin/env bash

# read -p "Enter your name: " USER
# echo "You've entered name: $USER"

read -p "Enter file/folder in root directory you want to archive: " FILE_TO_ARCHIVE

`pwd`/scripts/arguments.sh zip $FILE_TO_ARCHIVE