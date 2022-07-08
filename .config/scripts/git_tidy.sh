#!/bin/bash

set -e

PROJECT_DIR=$(pwd)
echo "Current dir is ${PROJECT_DIR}, is this root dir of current project?"
read -p "Yes or No: " ANSWER

function cleanup() {
  git fetch
  echo "Pruning origin"
  git remote prune origin
  default_branch=$(git remote show origin | sed -n '/HEAD branch/s/.*: //p')
  echo "Pruning local merged branches except for ${default_branch}"
  for branch in $(git branch --merged | grep -v '^\*.*' | sed -e 's/^[ ]*//' | grep -v "^${default_branch}$"); do
    echo "Removing branch $branch"
    rm -rf ${branch}
    git worktree prune
    git branch -d ${branch}
  done
}

if [[ "$ANSWER" == "Yes" ]]
then
  cleanup
else
  echo "cd to root of project"
fi

