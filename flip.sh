#!/bin/bash

curDate=$(date "+%Y-%m-%d")

for filename in $1/*.txt
do
  git checkout - $USER/$1/$curDate
  echo $(cat $filename | rev) > $filename
  git add -A
  git commit -m "Diff for $1"
done
