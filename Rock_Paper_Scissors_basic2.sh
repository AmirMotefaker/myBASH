# Code by @AmirMotefaker

#! /bin/bash

# Rock Paper Scissors - Basic2

declare -A win lose draw

win=([sang]=gheichi [kaqaz]=sang [gheichi]=kaqaz)
draw=([sang]=sang [kaqaz]=kaqaz [gheichi]=gheichi)
lose=([sang]=kaqaz [kaqaz]=gheichi [gheichi]=sang)

echo "$1 Will Lose ${lose[$1]}"
echo "$1 Will Draw ${draw[$1]}"
echo "$1 Will Win ${win[$1]}"
