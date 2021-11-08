#!/bin/sh
fname=$1
for i in 1 2 3 4 5
do
	eval "touch $fname$i.txt"
	eval "mkdir $fname$i"
	eval "ln -s $fname$i.txt $fname$i"
done

