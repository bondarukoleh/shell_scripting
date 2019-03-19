#!/usr/bin/env bash
INDEXES="$0 $1 $2 $3 $4"

for ARG in $INDEXES
do
  echo "Passed argument - $ARG"
done