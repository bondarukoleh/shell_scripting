#!/usr/bin/env bash

START=start
STOP=stop

function userEnteringCommand(){
  read -p "Input command: " COMMAND
  action $COMMAND
}

function userWantsToExit(){
  local USER_DECISION=""
  read -p "Do you want another round? " USER_DECISION
  anotherRound $USER_DECISION
}

anotherRound(){
  echo "DES - $1"
  case $1 in
    [Yy] | [Yy][Ee][Ss])
      echo "Let's go!"
      userEnteringCommand
      ;;
    [Nn] | [Nn][Oo])
      echo "Ok, let's finish"
      exit 0
      ;;
    exit)
      exit 0
      ;;
  esac
}

function action(){
  case $1 in
    $START | START) #means OR in switch case.
      echo "Started something"
      userEnteringCommand
      ;;
    $STOP | STOP)
      echo "Stopped something" 
      userWantsToExit
      ;;
    exit)
      exit 0
      ;;
    *) # means cases above not fired - anything that user passed - brings here
      echo "Pass 'start' or 'stop' please."
      userEnteringCommand
      ;;
  esac
}

action
