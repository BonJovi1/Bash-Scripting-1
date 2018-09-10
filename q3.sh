#!/bin/bash
string=$1
allfiles=`find -maxdepth 1 -type f -name "*.txt" | cut -d '/' -f2`
exitcode=1

for i in $allfiles
do
	ctr=`cat $i | grep $string | wc -l`
	if [ $ctr -gt 0 ]
	then
		echo "$ctr lines in $i"
		exitcode=0
	fi
done
if [ $exitcode -eq 1 ]
then
	exit 1
else
	exit  0
fi



