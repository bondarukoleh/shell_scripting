#!/usr/bin/env bash
L="HAHA"

function echoArg(){
  echo $1
  innerCall
}

function innerCall(){
  echo "Called inner function"
}

echoArg "HAHA"

PARAM_MESSAGE="Passed arg is - "

function loopingArgs(){
  local LOCAL_VAR='some local varible in funcionn'
  for PARAM in $@
  do
    echo $PARAM_MESSAGE$PARAM
  done
}


loopingArgs first_argument second_argument third_argument

echo "Inner loopingArgs function variabe after function run is global now - $PARAM"
echo "Inner loopingArgs function variabe - $LOCAL_VAR"

