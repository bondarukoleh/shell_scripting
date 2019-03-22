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
