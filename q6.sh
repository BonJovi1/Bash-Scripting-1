#!/bin/bash
echo "What is your monthly salary my friend?"
read monthly

annual=`bc <<< "scale=4; $monthly*12"`

tax=`bc <<< "scale=4; (30/100) * $annual"`

compare=`echo "$annual<=300000" | bc`

if [ $compare -eq 1 ]
then
	echo "NO TAX PAYMENT REQUIRED"
else
	echo "TAX PAYMENT REQUIRED:$tax"
fi



