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
      if [[ $2 != 'L' && $2 != 'M' && $2 != 'H' ]]; then
        echo "Option -p|--priority Only Accept L|M|H"
        exit
      fi
      priority=$2
      shift 2
    fi
  done
  echo "0,$priority,\"$title\"" >>tasks.csv
  ;;
esac


#! /bin/bash

# Tasks File
file=tasks.csv

# Get Tasks from Tasks File and List Them
function _list {
  number=1
  cat "$file" | awk -F, '{print $1" | "$2" | "$3}' | while read line; do
    pretty_line=$(printf "%d | %s" "$number" "$line")
    echo "$pretty_line"
    number=$((number+1))
  done
}

# Make Tasks File Empty
function _clear {
  echo -n "" > "$file"
  echo 'Tasks Cleared!'
}

case $1 in
"list")
  _list;;
"clear")
  _clear;;
*)
  echo "Command Not Supported!";;
esac
