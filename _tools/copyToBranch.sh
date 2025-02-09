#!/usr/bin/env bash

if [[ ! $1 ]]; then
    echo "Usage: ./copyToBranch.sh BRANCH_NAME"
    exit 1
fi

#set -e
set -x
#cd "$(dirname "$0")"

BRANCH_NAME=$1
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"

# git checkout trunk
git pull
git branch -D $BRANCH_NAME
git checkout -b $BRANCH_NAME
make build
git push -f origin $BRANCH_NAME
git checkout $CURRENT_BRANCH
