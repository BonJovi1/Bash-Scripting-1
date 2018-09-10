#!/bin/bash

folders=`ls -d */ | cut -d '/' -f1`

j=0
for i in $folders
do
        names[j]=$i
        j=$((j+1))
done

j=0
total=0
for i in $folders
do
	a=`ls -lR $i | awk '{print $5}' | awk '{total=total+$1}'END'{print total}'`
	array[j]=$a
	j=$((j+1))
done


for((i=0;i<j-1;i++))
do
        for((k=0;k<j-1;k++))
        do
                if [ ${array[k]} -lt ${array[k+1]} ]
                then
                        temp=${array[k]}
                        temp2=${names[k]}
                        array[k]=${array[k+1]}
                        names[k]=${names[k+1]}
                        array[k+1]=$temp
                        names[k+1]=$temp2

                fi
        done
done

for((i=0;i<j;i++))
do
        echo "${names[i]}  ${array[i]}"
done
