#!/bin/bash
git checkout main
git checkout -b feat/branch
echo "def" >> to_append
echo "def" >> to_move_to_kept_append
echo "kept/to_move_to_kept_overwrite" > to_move_to_kept_overwrite
rm to_remove
mv to_move_to_kept kept
mv to_move_to_kept_append kept
mv to_move_to_kept_overwrite kept
mv to_rename renamed
cat test_additions_deletions_feat_branch > test_additions_deletions
git add .
git commit -m "branch commit"