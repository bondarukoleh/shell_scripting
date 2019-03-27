#!/usr/bin/env bash -x
PS4="+ $BASH_SOURCE : $LINENO : ${FUNCNAME} "

ownDebug(){
  echo "Executing: $@"
  $@
}

ownDebug ls