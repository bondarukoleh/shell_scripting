#!/usr/bin/env bash

HOST="google.com"

ping -c 1 $HOST
if [ $? -eq 0 ]
then 
    echo "We managed to ping google"
else 
    echo "We cannot ping google"
fi 