#!/bin/bash

BRANCH_NAME=$(git symbolic-ref --short HEAD)
BRANCH_NAME="${BRANCH_NAME##*/}"

if ps -o args= $PPID | grep -E -q ' --no-verify| -n | -n$' ; then
  sed -i.bak -e "1s/^//" $1
else
  sed -i.bak -e "1s/^/$BRANCH_NAME \/ /" $1
fi