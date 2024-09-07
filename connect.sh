#!/bin/bash

if [ -z $1 ]; then
  echo "you need to supply the user (and hence the box) to use!"
  exit 1
fi

username=$1

if [ ! -f "pwdfiles/$username" ]; then
  echo "you need to create the pwdfile for [${username}]!"
  exit 1
fi

case "$username" in
  bandit*)
    echo "connecting to bandit box using user [${username}]..." 
    sshpass -f pwdfiles/$username ssh -l $username bandit.labs.overthewire.org -p 2220
  ;;
esac

