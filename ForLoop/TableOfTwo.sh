#!/bin/bash -x
read -p "Enter no:" n
result=1
for(( i=1;i<=n;i++))
do
	result=$(($result*2))
	echo $result
done
