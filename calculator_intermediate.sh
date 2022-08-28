# Code by @AmirMotefaker

#! /bin/bash

# Calculator Intermediate

if [ $2 == "+" ]; then
    echo "addition of your two numbers are $(($1 + $3))"
elif [ $2 == "-" ]; then
    echo "subtraction of your two numbers are $(($1 - $3))"
elif [ $2 == "x" ]; then
    echo "multiplication of your two numbers are $(($1 * $3))"
else
    echo "division of your two numbers are $(($1 / $3))"
fi
