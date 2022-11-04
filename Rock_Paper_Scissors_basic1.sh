# Code by @AmirMotefaker

#! /bin/bash

# Rock Paper Scissors - Basic

if [ $1 == "sang" ]; then
        echo "$1 Will Lose kaqaz"
        echo "$1 Will Draw sang"
        echo "$1 Will Win gheichi"
elif [ $1 == "gheichi" ]; then
        echo "$1 Will Lose sang"
        echo "$1 Will Draw gheichi"
        echo "$1 Will Win kaqaz"
elif [ $1 == "kaqaz" ]; then
        echo "$1 Will Lose gheichi"
        echo "$1 Will Draw kaqaz"
        echo "$1 Will Win sang"
fi
