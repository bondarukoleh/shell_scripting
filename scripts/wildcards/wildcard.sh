#!/usr/bin/env bash
# ls -F *.md
# ls Read??*
# ls -l Read[[:alpha:]]*

# mv *.tar* ./archives #move all archive files to archive dir

# ls ?.txt # check the output befor deleting
# rm ?.txt # delete needed files

for SCRIPT_FILE in *.sh
do 
  echo "found $SCRIPT_FILE"
done