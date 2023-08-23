#!/bin/bash
if [ -z "$1" ]
  then
    echo "missing <user.name>. usage: ./init.sh <user.name> <user.email> <project.id>"
    exit 1
fi

if [ -z "$2" ]
  then
    echo "missing <user.email>. usage: ./init.sh <user.name> <user.email> <project.id>"
    exit 1
fi

if [ -z "$3" ]
  then
    echo "missing <project.id>. usage: ./init.sh <user.name> <user.email> <project.id>"
    exit 1
fi

echo "# $3" >> README.md
git init
git branch -M main
git add .
git config user.name $1
git config user.email $2
git commit -m "first commit"