#!/bin/bash

warn=$1
critical=$2
number=`df -h|wc -l`
for((i=2;i<=number;i++))
do
	var=`df -h | awk '{print $5}'| awk "NR==$i"`
	name=`df -h|awk '{print $1}'| awk "NR==$i"`
	percent=`echo "$var" | rev | cut -c 2- |rev`
	if [ $percent -gt $critical ]
	then
		echo "CRITICAL, $name, $var"
	elif [ $percent -gt $warn ]
	then
		echo "WARNING, $name, $var"
	else
		echo "OK, $name, $var"

	fi
done


