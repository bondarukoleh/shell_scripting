#!/usr/bin/env bash

START=start
STOP=stop

function userInput(){
  read -p "Input command: " COMMAND
  action $COMMAND
}


function action(){
  case $1 in
    $START | START) #means OR in switch case.
      echo "Started something"
      userInput
      ;;
    $STOP | STOP)
      echo "Stopped something" 
      exit 0
      ;;
    *) # means cases above not fired - anything that user passed - brings here
      echo "Pass 'start' or 'stop' please."
      userInput
      ;;
  esac
}

action
