#!/usr/bin/env bash
HOST="google.com"
PING_GOOGLE="ping -c 1 google.com"
$PING_GOOGLE
PING_EXIT_STATUS=$?

if [ $PING_EXIT_STATUS -eq 0 ]
then 
    echo "$HOST is reachable"
fi 

# Same thing we can do with AND operator
$PING_GOOGLE && echo "$HOST is reachable!!!" #If we ping google - we will print message

if [ $PING_EXIT_STATUS -ne 0 ]
then 
    echo "$HOST is NOT reachable!!!"
fi 
$PING_GOOGLE || echo "$HOST is NOT reachable!!!" #If we couldn't ping google - we will print message

`pwd`/scripts/helpers/returnExitStatus5.sh
`pwd`/scripts/helpers/empty.sh
echo "exit status of LAST SCRIPT IS - $?"