#!/bin/sh
echo $1
num=`expr $1`
for i in `seq 1 $num`
do
	echo "hello world";
done
exit 0
