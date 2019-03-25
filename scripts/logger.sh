#!/usr/bin/env bash

log(){
    local LOG_LEVEL=$1
    shift # delete first argument
    MESSAGE=$@
    TIME_STAMP=$(date +"%Y-%m-%d %T")
    if [ "${LOG_LEVEL}" = "ERROR" ]
    then
        echo "${TIME_STAMP} [$$]: '${LOG_LEVEL}' - ${MESSAGE}"
    fi
}

some_action || log ERROR "Couldn't do some action"