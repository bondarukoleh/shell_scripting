#!/usr/bin/env bash

COUNTER=0

while [ $COUNTER -lt 5 ]
do
  echo "looping using COUNTER - $COUNTER"
  ((COUNTER++)) #arephmetic operation
done


while [ "$CORRECT_NAME" != "y" ]
do
  read -p "Enter name: " NAME
  read -p "Name '${NAME}' correct?: " CORRECT_NAME
  echo "looping using user input"
done

STATE=0
condition(){
  if [ $STATE -lt 3 ]
    then
      echo "STATE is - $STATE"
      ((STATE++))
      return 0
    else 
      return 1
    fi
}

while condition
do
  echo "Looping with condition"
done