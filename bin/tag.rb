#!/usr/bin/env bash

git status

git submodule foreach \
  'git log --graph -n 2 --pretty=format":%C(yellow) %h %Creset%t %Cblue%d%Creset %s %C(white) %an, %ar, commited %cr %Creset"'

read -p "Continue to tag and push version '$1': Yy " -n 1 -r
echo

if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo 'bailing out'
    exit 1
fi

git tag -s "$1" -m "Cider-CI version $1"
git tag -s "Cider-CI_$1" -m "Cider-CI version $1"


git submodule foreach 'git tag -s "Cider-CI_$1" -m "Cider-CI version $1"'

for REMOTE in `git remote -v | awk '{print $1}' | uniq`; do git push $REMOTE --tags; done
git submodule foreach "for REMOTE in `git remote -v | awk '{print $1}' | uniq`; do git push $REMOTE --tags; done"

