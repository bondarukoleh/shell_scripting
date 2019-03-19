#!/usr/bin/env bash
ARGUMENTS="${1} ${2} $3 $4"

for ARG in $ARGUMENTS
do
  echo "Passed argument - $ARG"
done

for ARGUMENT in $@ #$@ -stands for all passed arguments
do 
  echo "Passed argument - $ARGUMENT"
done 

PWD_PATH="$(pwd)"
ARCHIVE_PATH="${PWD_PATH}/archives/"

# Creting archive of passed "directory/file name" after "zip" argument
if [ $1 = "zip" ]
then 
  DIR_TO_ARCHIVE="${PWD_PATH}/$2"
  ARCHIVE_NAME="$2.tar.gz"
  echo "Archiving ${DIR_TO_ARCHIVE} to ${ARCHIVE_PATH}${ARCHIVE_NAME}"
  tar cf ${ARCHIVE_PATH}${ARCHIVE_NAME} $DIR_TO_ARCHIVE
fi