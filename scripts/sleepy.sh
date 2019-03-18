#!/usr/bin/env bash
ps -fp $$
mkdir a
sleep 30
rm -rf a
# run script and get the pid
# ps -ef | grep PID | grep -v grep

# to see the commands in script
# pstree -p PID