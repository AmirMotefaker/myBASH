# Code by AmirMotefaker

# Solution me1
#! /bin/bash

echo "1.Area of Rectangle"
echo "2.Area of Square"
echo "3.Area of triangle"
echo "enter the choice of operation:"
read c
case $c in
1)
echo -n "Enter Length of Rectangle: "
read l
echo -n "Enter Width of Rectangle: "
read w
Area=`expr $l \* $w`
echo "Rectangle Area is : $Area"
;;
2)
echo -n "Enter Length of Square: "
read l
sarea=`expr $l \* $l`
echo "Square Area is : $sarea"
;;
3)
# Area=(1/2) x Base x Height
echo -n "Enter Base of a triangle : "
read b
echo -n "Enter Height of a triangle : "
read h
area='echo (b * h) / 0.5'
echo "Triangle Area is : $area"
;;
esac


# Solution 2 me
#!/bin/bash

case $1 in
	rectangle)
		echo "Rectangle Area is : $(($2*$3))"
		;;
	square)
		echo "Square Area is : $(($2*$2))"
		;;
	triangle)
		echo "Triangle Area is : $(($2*$3/2))"
		;;
esac



# Solution 3
#!/bin/bash

rectangle_area() {
        area=$(($1 * $2))
        echo "Rectangle Area is : $area"
}

square_area() {
        area=$(($1 * $1))
        echo "Square Area is : $area"
}

triangle_area() {
        area=$(($(($1 * $2)) / 2))
        echo "Triangle Area is : $area"
}

if [ $1 == "rectangle" ]; then
        rectangle_area $2 $3
elif [ $1 == "square" ]; then
        square_area $2
else
        triangle_area $2 $3
fi
