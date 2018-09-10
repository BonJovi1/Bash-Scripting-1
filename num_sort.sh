#!/bin/bash

array=($@)
echo "Array entered: "
echo ${array[@]}
for (( i=0;i<$#-1;i++ )) #bubble sort
do
	for((j=0;j<$#-1;j++))
	do
		if [ ${array[j]} -gt ${array[j+1]} ]
		then
			temp=${array[j]}
			array[j]=${array[j+1]}
			array[j+1]=$temp
		fi
	done
done
echo "Modified array: (In Ascending Order) "
echo ${array[@]}
