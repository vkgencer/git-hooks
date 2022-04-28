#!/bin/bash

BRANCH_NAME=$(git symbolic-ref --short HEAD)
BRANCH_NAME="${BRANCH_NAME##*/}"

if [ "${BRANCH_NAME}" = "development" ]; then
    BRANCH_URL="test url"
elif [ "${BRANCH_NAME}" = "master" ]; then
    BRANCH_URL="pilot url"
fi

echo "######################################## TEST URL ==> $BRANCH_URL"
