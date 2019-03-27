#!/usr/bin/env bash

LINE_NUM=1

while read LINE
do
  echo  "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < /etc/fstab.hd #less sign followed by file makes while reading it, omg what the hell.

echo "####################"
echo "Reading from grep using while"
grep no /etc/fstab.hd | while read LINE
do
  echo "'no' here in line: ${LINE}"
done

echo "####################"
echo "Reading command 'ls' file by file"
cd ./scripts
ls | while read FILE
do
  echo "File found: ${FILE}"
done
cd ..

echo "####################"
echo "Splitting read line"
cd ./scripts
ls -all | while read RIGHTS CODE OWNER GROUP SIZE CODE2 REST
do
  echo "File found: size: '${SIZE}', and owner: '${OWNER}' date and name in rest params: '${REST}'"
done
cd ..