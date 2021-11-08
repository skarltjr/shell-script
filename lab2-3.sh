#!/bin/sh
weight=$1
height=$2
total_height=`expr $height \* $height`
bmi=`expr $weight/$total_height | bc`
echo "$bmi"
if [ $bmi -lt 18.5 ]
then
	echo "저체중"
elif [ $bmi -ge 23 ]
then
	echo "과체중"
else
	echo "정상입니다"
fi
