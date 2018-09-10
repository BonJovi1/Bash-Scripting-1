#!/bin/bash
file=$1
number=`cat $file | grep -v ^$ | wc -l`
for((i=1;i<=$number; i++))
do
	var=`cat $file | grep -v ^$ | head -n $i | tail -n -1`
	echo "$i) $var"
done



