#!/usr/bin/env bash
for file in *.sql
do
  # echo mv "$file" "${file/taks/task}"
  mv "$file" "${file/taks/task}"
done

