#!/bin/bash
number=$1

ctr=$number
while [ $ctr -gt 0 ]
do
if [ $ctr -lt 4 ]
then
	for((i=1;i<=$ctr;i++))
	do
		echo -n "I"
	done
	break

elif [ $ctr -eq 4 ]
then
	echo -n "IV"
	break

elif [ $ctr -lt 9 ]
then
	ctr=$(($ctr-5))
	echo -n "V"
	for((i=1;i<=ctr;i++))
	do
		echo -n "I"
	done
	break

elif [ $ctr -eq 9 ]
then 
	echo -n 'IX'
	break

elif [ $ctr -le 39 ]
then
	ctr=$(($ctr/10))
	for((i=1;i<=ctr;i++))
	do
		echo -n "X"
	done
	ctr=$(($number%10))

elif [ $ctr -lt 50 ]
then
	echo -n "XL"
	ctr=$(($number%10))

elif [ $ctr -lt 90 ]
then
	echo -n "L"
	ctr=$(($ctr-50))
elif [ $ctr -lt 100 ]
then
	echo -n "XC"
	ctr=$(($number%10))

elif [ $ctr -lt 400 ]
then
	echo -n "C"
	ctr=$(($ctr-100))

elif [ $ctr -eq 400 ]
then
	echo "CD"
	break
else
	echo "Sorry, the range is only upto 400"
fi
done





	


	



