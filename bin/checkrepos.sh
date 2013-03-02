#!/bin/bash

# Checks the repositories under the Src folder and reports whether they have any commits or uncommited changes
# Thanks to BalajiN for this script

WD=~/Projects/MOTECH

for directory in `find $WD`
do
  if [ -d $directory -a -d $directory/.git ];then
     cd $directory
     if [ -n "$(git status --porcelain)" ]; then
       echo "Uncommited changes in "$directory
     fi
     if [ -n "$(git status | grep 'ahead of')" ]; then
       echo "Unpushed changes in "$directory
     fi
  fi
done
