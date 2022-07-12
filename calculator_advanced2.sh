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
            sub=$((sub - $1))
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
            dev=$((dev / $1))
            shift
        done
        echo "division of your two numbers are $dev"
    ;;
esac


# Output
# $ bash calculator_advanced2.sh / 128 4 2 2 2
# division of your two numbers are 4

# $ bash calculator_advanced2.sh - 2 4 9 1
# subtraction of your two numbers are -12

# $ bash calculator_advanced2.sh x 3 -1 2 4
# multiplication of your two numbers are -24

# $ bash calculator_advanced2.sh + 9 0 -4 5 12 3 -13
# addition of your two numbers are 12
