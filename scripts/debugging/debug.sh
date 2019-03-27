#!/usr/bin/env bash -vxe

# set -x
PWD=`pwd`
# set +x
echo $PWD

function return1(){
  echo "this will stop the script"
  return 1
}

return1

echo "After 1"