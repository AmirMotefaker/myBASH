#!/bin/bash

case $1 in
"add")
  shift
  priority='L'
  while [ -n "$1" ]; do
    case "$1" in
    -t | --title) mode=1 ;;
    -p | --priority) mode=2 ;;
    *) ;;
    esac
    if [ "${mode}" == 1 ]; then
      if [ -z "$2" ]; then
        echo "Option -t|--title Needs a Parameter"
        exit
      fi
      title=$2
      shift 2
    elif [ "${mode}" == 2 ]; then
      priority=$2
      shift 2
    fi
  done
  echo "0,$priority,\"$title\"" >>tasks.csv
  ;;
esac
