#!/bin/bash
while (( "$#" ))
do
	if [ -e $1 ]
	then
		if [ -f $1 ]
		then
			ls -l $1

		fi

	fi
	shift 
done

