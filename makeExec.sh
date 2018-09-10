#!/bin/bash

file=$1
if [ $# -eq 0 ]
then
	echo "No argument has been passed, please do so."
	exit 1
elif [ $# -gt 1 ]
then
	echo "Please pass just one argument"
	exit 1
fi

if [ -e $file ]
then
	if [ -f $file ]
	then
		chmod u+x $file
		echo "Execute permission to the file has been added."
	else
		echo "NOT A REGULAR FILE"
	fi

else
	echo "File does NOT exist"
fi




