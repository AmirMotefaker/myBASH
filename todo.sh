#!/bin/bash

case $1 in
"add")
  shift
  priority='L'
  case "$1" in
  -t | --title) mode=1 ;;
  -p | --priority) mode=2 ;;
  *) ;;
  esac
  if [ "${mode}" == 1 ]; then
    title=$2
    shift 2
  fi
  echo "0,$priority,\"$title\"" >> tasks.csv
  ;;
esac
