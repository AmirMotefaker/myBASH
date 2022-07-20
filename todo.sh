# Code by @AmirMotefaker

# ToDo List

#! /bin/bash

# Tasks File
file=tasks.csv

# Add Task to Tasks File
function _add {
  # Task Title Should be in " " because of some Special Characters CSV
  echo "0,$1,\"$2\"" >> "$file"
  echo "Task '$2' Added to List."
}


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


# Make Task Done by ID (ID is Line Number)
function _done {
  num=$1 # Task ID
  lines_number=$(wc -l "$file") # Get File Length
  if [[ $num > $lines_number ]]; then
    echo "Task '${num}' Not Exists!"
    exit
  fi
  tmp_line=$(sed -n "$num"p "$file") # Get Specific Line of File
  line="1"${tmp_line:1}
  sed -i "$num""s/$tmp_line/$line/" "$file"
  echo "Task ${line:4} Done."
}

# Find Task by Title and Return Tasks
function _find {
  grep -n "$1" "$file" | while read line; do
    number=${line:0:1}
    done=${line:2:1}
    priority=${line:4:1}
    task=${line:6}
    pretty_line=$(printf "%d | %d | %s | %s" "$number" "$done" "$priority" "$task")
    echo "$pretty_line"
  done
#  With Loop
#  number=1
#  cat "$file" | while read line; do
#    array=${line:3}
#    # Regex is : [[ "$array" =~ .*"$1".* ]]
#    if [[ "$array" == *"$1"* ]]; then
#      echo "$number" "$line"
#    fi
#    number=$((number+1))
#  done
}


case $1 in
"add")
  while [ -n "$2" ]
  do
    case "$2" in
      -t | --title)
        if [ -z "$3" ]; then
           echo "Option -t|--title Needs a Parameter"
           exit
        fi
        name="$3"
        shift
        shift ;;

      -p | --priority)
        priority=$3
        if [[ $priority != 'L' && $priority != 'M' && $priority != 'H' ]]; then
          echo "Option -p|--priority Only Accept L|M|H"
          exit
        fi
        shift
        shift ;;

      *)
        echo "Invalid Option"
        exit ;;
    esac
  done
  # Default Task Priority
  if [[ -z "$priority" ]]; then
    priority="L"
  fi
  _add "$priority" "$name";;

"list")
  _list;;
"clear")
  _clear;;
"done")
  _done "$2";;
"find")
  _find "$2";;
*)
  echo "Command Not Supported!";;
esac
