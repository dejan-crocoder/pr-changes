#!/bin/bash
if [ -z "$1" ]
  then
    echo "missing <origin>. usage: ./push.sh <origin>"
    exit 1
fi

git remote add origin $1
git checkout main && git push origin main
git checkout feat/branch && git push origin feat/branch