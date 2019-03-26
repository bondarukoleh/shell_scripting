#!/usr/bin/env bash

COUNTER=3

while [ $COUNTER -ne 0 ]
do
    echo "Looping using counter $COUNTER"
    COUNTER=$(( --COUNTER )) #Decrement should be pre, not post
    echo $COUNTER
done

# FUNCTION_COUNTER=3

# changeCondition(){
#     $((--FUNCTION_COUNTER))
#     echo "function counter - $FUNCTION_COUNTER"
#     if [ $FUNCTION_COUNTER -eq 0 ]
#     then 
#         return 1
#     else
#         return 0
#     fi
# }

# while [ changeCondition -eq 0 ]
# do
#     sleep 2
#     echo "Looping using function"
# done