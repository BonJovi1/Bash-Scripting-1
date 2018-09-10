#!/bin/bash

ctr=1
n=$1

a=`date`
ping -c $n www.google.com | while read b 
                            do
				    tput setaf $ctr
				    echo "$a -- $b"
				    ctr=$((ctr+1))
			    done 

