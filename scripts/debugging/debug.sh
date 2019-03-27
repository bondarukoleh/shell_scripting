#!/usr/bin/env bash -vxe

# set -x
VAR=`pwd`
# set +x
echo $VAR

function return1(){
  echo "this will stop the script"
  return 1
}

return1

echo "After 1"