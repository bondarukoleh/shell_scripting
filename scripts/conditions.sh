#!/bin/bash
FILE="/etc/hosts"
if [ -f $FILE ]
then
	echo "$file found."
else
	echo "$file not found."
fi