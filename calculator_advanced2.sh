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
case $1  in
    -)  shift
        sub=$1
        shift
        while [ $1 ]
        do
            sub=$(($1 - sub))
            shift
        done
        echo "subtraction of your two numbers are $sub"
    ;;
esac
case $1  in
    x)  shift
        mult=$1
        shift
        while [ $1 ]
        do
            mult=$(($1 * mult))
            shift
        done
        echo "multiplication of your two numbers are $mult"
    ;;
esac
case $1  in
    /)  shift
        dev=$1
        shift
        while [ $1 ]
        do
            dev=$(($1 / dev))
            shift
        done
        echo "division of your two numbers are $dev"
    ;;
esac
