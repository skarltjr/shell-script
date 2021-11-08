#!/bin/sh
fname="DB.txt"

if [ -e $fname ]
then
	echo "$1 $2" >> $fname
else
	echo "$1 $2" > $fname
fi
