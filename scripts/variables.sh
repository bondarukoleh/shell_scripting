#!/usr/bin/env bash
QUOTES_NAME="Name with quotes"
# Without quotes only text without spaces, can contain "_" and digits, but not start from digits.
WITH_OUT_QUOTES=with_out_quotes
VAR_TO_VAR="$QUOTES_NAME ${WITH_OUT_QUOTES}"
NUMBER=1
BASH=bash

#Putting command in variable. Back quotes - old way.
SERVER_NAME=$(hostname)
LIST=`ls`

echo "This is text wit quotes - $QUOTES_NAME"
echo "This is text without quotes - ${WITH_OUT_QUOTES}"
echo $VAR_TO_VAR
echo "$NUMBER + 1"

#Quotes needed when you need to add some additional data to variable
echo "I like ${BASH}ing."

echo "Working on: $SERVER_NAME"
echo "$LIST - we got here."
