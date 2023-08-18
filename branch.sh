#!/bin/bash
git checkout -b feat/branch
echo -e "\ndef" >> to_append
echo -e "\ndef" >> to_move_to_kept_append
echo "kept/to_move_to_kept_overwrite" > to_move_to_kept_overwrite
rm to_remove
mv to_move_to_kept kept
mv to_move_to_kept_append kept
mv to_move_to_kept_overwrite kept
mv to_rename renamed
git add .
git commit -m "branch commit"