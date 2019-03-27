#!/usr/bin/env bash

FILE="/etc"
if [ -d $FILE ]
then
	echo "$FILE is directory"
fi

# Doesn't work with "not empty string", Err -too many arguments
SOME_STRING1="not_empty_string"
SOME_STRING2="not_empty_string"
EMPTY_STRING=""
if [ -n $SOME_STRING1 ] && [ -z $EMPTY_STRING ]
then
	echo "$SOME_STRING1 - is not empty"
fi

if [ $SOME_STRING1 = $SOME_STRING2 ]
then
	echo "$SOME_STRING1 - is equal to - $SOME_STRING2"
fi

ARG1=15
ARG2=10
if [ $ARG1 -gt $ARG2 ]
then
	echo "$ARG1 - is greater than - $ARG2"
fi


BOOLEAN=true
if $BOOLEAN # or [ $BOOLEAN ] 
then 
  echo "Boolean value shouldn't be quoted"
fi
$BOOLEAN && echo "&& fires if variable is true"
BOOLEAN=false
$BOOLEAN || echo "|| fires if variable is false"