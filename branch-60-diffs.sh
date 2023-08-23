#!/bin/bash
git checkout main
git checkout -b feat/branch-60-diffs
mkdir diffs
for i in {1..60}
do
  echo "diff-${i}" > diffs/diff-${i}
done
git add .
git commit -m "branch-60-diffs commit"