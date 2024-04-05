#!/bin/bash

forall=/home/Scripts

for file in "$forall"/*
do
  if [ -d "$file" ]; then
    continue
  fi
  if [ -e "$file" ]; then
    owner=$(stat -c %U -- "$file")
    cp -n "$file" "$forall/$owner"/
    chown "$owner" "$forall/$owner/$file"
  fi
done
