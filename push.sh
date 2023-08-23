#!/bin/bash
if [ -z "$1" ]
  then
    echo "missing <origin>. usage: ./push.sh <origin>"
    exit 1
fi

git remote add origin $1
git checkout main && git push --force origin main
git checkout feat/branch && git push --force origin feat/branch
git checkout feat/branch-60-commits && git push --force origin feat/branch-60-commits