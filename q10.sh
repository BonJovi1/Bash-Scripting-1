#!/bin/bash
X=`who | wc -l`
Y=`cat /etc/passwd|cut -d ':' -f1|wc -l`
echo "$X OUT OF $Y USERS ARE ONLINE RIGHT NOW"


