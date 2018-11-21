#!/bin/bash

curDate=$(date "+%Y-%m-%d-%s")
git checkout -b $USER/$curDate
for filename in $1/*.txt
do
  echo $(cat $filename | rev) > $filename
done
git add -A
git commit -m "Diff for $1"

