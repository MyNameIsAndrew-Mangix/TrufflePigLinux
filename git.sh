#!/bin/bash

echo "Deleting the work folder if it exists"
[ -d work ] && rm -rf work

echo "Checking for newer files online first"
git pull

#Stages the project
git add --all .

#Comment on commit
echo "Enter commit comment: "

read input

#Committ to local repo with a message with time details and commit comment

git commit -m "$input"

#Push local to github
git push -u origin master

echo "Git push done"