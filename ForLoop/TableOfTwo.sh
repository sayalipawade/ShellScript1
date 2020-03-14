#!/bin/bash -x
read -p "Enter no:" n
result=1
for(( i=1;i<=n;i++))
do
	result=$((2*$i))
	echo "$result"
done
