#!/usr/bin/env bash
HOST="google.com"
PING_GOOGLE="ping -c 1 google.co1m"
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
    exit 1
fi 

$PING_GOOGLE || eval "echo $HOST is NOT reachable!!! ; exit 4"  #If we couldn't ping google - we will print message
`pwd`/scripts/helpers/checkFile.sh `pwd`/info
echo "exit status of LAST SCRIPT IS - $?"
exit 0