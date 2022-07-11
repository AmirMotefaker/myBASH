#! /bin/bash

case $1 in
    +)  shift
        sum=$1
        shift
        while [ $1 ]
        do
            sum=$(($1 + sum))
            shift
        done
        echo "addition of your two numbers are $sum"
    ;;
esac
