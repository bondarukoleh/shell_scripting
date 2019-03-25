#!/usr/bin/env bash

function countFiles(){
  local DIRECTORY_TO_COUNT=$1
  echo "directory - $DIRECTORY_TO_COUNT"
  local DIRECTORY_TO_COUNT_NAME=$(basename ${DIRECTORY_TO_COUNT})
  echo "directory name - $DIRECTORY_TO_COUNT_NAME"
  local FILES_COUNT=`ls $DIRECTORY_TO_COUNT | wc -w`

  printf "'/${DIRECTORY_TO_COUNT_NAME}' folder files count:\n $FILES_COUNT"
}

countFiles $1