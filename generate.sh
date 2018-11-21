#!/bin/bash

for ((i=1;i<=$1;i++))
do
  mkdir -p "tests/${1}_small_files"
  cat lorem_small.txt >> "tests/${1}_small_files/File${i}.txt"

  mkdir -p "tests/${1}_large_files"
  cat lorem_large.txt >> "tests/${1}_large_files/File${i}.txt"
done
