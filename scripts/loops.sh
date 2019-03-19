#!/usr/bin/env bash

RED=red
BLUE=blue
YELLOW=yellow
LENGS="0 1 2"
COLORS_ARR=($RED $BLUE $YELLOW)

for INDEX in $LENGS
do
  echo "We got color - ${COLORS_ARR[$INDEX]}"
done

SOME_ARR="red blue yellow"
for COLOR in $SOME_ARR
do
  echo "Color - $COLOR"
done

PATH_TO_FILES=$(ls -d "$(pwd)/data")
FILES=$(ls "$(pwd)/data")
DATE=$(date +%F)

echo $FILES

for FILE in $FILES
do
  echo "Will work with $FILE"
  echo "Add $DATE to $FILE name"
  mv "${PATH_TO_FILES}/${FILE}" "${PATH_TO_FILES}/${FILE}-${DATE}.txt"
done