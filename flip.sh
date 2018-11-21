#!/bin/bash

curDate=$(date "+%Y-%m-%d")
git checkout -b $USER/$1/$curDate
for filename in $1/*.txt
do
  echo $(cat $filename | rev) > $filename
done
git add -A
git commit -m "Diff for $1"
