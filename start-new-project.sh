#!/usr/bin/env bash
/bin/echo 'You should be in the parent folder where you want the project created.'
/bin/echo '
What is the remote link to the repo. (e.g. git@github.com:<user>/some-repo-name.git)'
read remote
echo "$remote"
/bin/echo '
What do you want to name the folder for this project?'
read  answer
echo "$answer"
git clone $remote --depth 1 $answer
cd ./$answer
echo $PWD
echo "REMOVE GIT"
rm -rf .git
echo "Init GIT"
git init
git add .
git commit -m "initial commit"