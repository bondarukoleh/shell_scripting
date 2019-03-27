#!/usr/bin/env bash

while read LINE
do
  ((LINE_NUM++))
  echo  "${LINE_NUM}: ${LINE}"
  [ $LINE_NUM -eq 2 ] && break # exits loop, but not exit the script
done < /etc/fstab.hd

echo "After loop"
