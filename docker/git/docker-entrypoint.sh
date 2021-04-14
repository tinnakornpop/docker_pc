#!/usr/bin/env bash

git config --global user.name "$1"
git config --global user.email "$2"

files="/gitpc/*"
for filepath in $files; do
  if [ -d $filepath ] && [ -d "${filepath}/.gitpc" ] && [ ! -f "${filepath}/.docker_git_ignore" ] ; then
#    echo $filepath
    cd $filepath
    git secrets --install > /dev/null 2>&1
    #git flow init -d -f > /dev/null 2>&1

    if [ -f "${filepath}/script/git_secrets_allowed.sh" ]; then
      /bin/bash "${filepath}/script/git_secrets_allowed.sh"
    fi

    cd ..
  fi
done

/bin/bash
