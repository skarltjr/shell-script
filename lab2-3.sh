#!/bin/sh
weight=$1
height=`expr "scale=2; $2/100" | bc`
total_height=`expr "scale=2; $height*$height" | bc`
bmi=`expr "scale=2; $weight/$total_height" | bc`
echo "$bmi"

first="18.5"
second="23"
if [ 1 -eq "$(echo "$bmi < $first" | bc)" ]
then
	echo "저체중"
elif [ 1 -eq "$(echo "$bmi >= $second" | bc)" ]
then
	echo "과체중"
else
	echo "정상입니다"
fi
