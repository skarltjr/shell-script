#!/bin/sh

fname=$1
first=1
second=2
third=3
fourth=4
fifth=5

if [ ! -d $fname ]
then
	eval "mkdir $fname"
	eval "cd $fname"	
	for i in 1 2 3 4 5
	do
		eval "touch $fname$i.txt"
	done

	eval "tar -cf $fname.tar $fname$first.txt $fname$second.txt $fname$third.txt $fname$fourth.txt $fname$fifth.txt"
	eval "mkdir $fname"
	eval "mv $fname.tar $fname"
	eval "cd $fname"
	eval "tar -xf $fname.tar"
fi
	
