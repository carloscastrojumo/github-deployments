#!/bin/bash

# random number
num=$RANDOM

git checkout main
git pull origin main
git co -b pr-$num
echo $num >> README.md
git add .
git commit -m "[skip ci] PR $num"
git push origin pr-$num
gh pr create --fill
git co main
git pull origin main
