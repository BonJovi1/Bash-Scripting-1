#!/bin/bash
echo "Squares of numbers from 1 to 10"
for((i=1;i<=10;i++))
	do
		answer1=$(($i*$i))
		echo "$answer1"
	done

echo "Enter a number from 1 to 10"
read n
if [ $n -gt 10 ]
then
	echo "Please enter a number up until 10"
else

for((i=1;i<=n;i++))
do
	answer2=1
	for((j=1;j<=i;j++))
	do
		answer2=$(($answer2*$i))
	done
	echo "$answer2"
done
fi

echo "Odd Fibonacci Numbers up until 100:"
a=0
b=1
c=0
while [ $c -lt 101 ]
do
	
	c=$(($a+$b));
	if [ $((c%2)) -eq 1 ]
	then
		echo $c
	fi
	a=$b
	b=$c
done



		

