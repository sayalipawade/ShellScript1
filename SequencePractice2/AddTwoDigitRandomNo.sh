#!/bin/bash 
for(( i=1;i<=5;i++))
do
	No=$((RANDOM%100))
	echo $No
	sum=$((sum+No))
	avg=$((sum/5))
done
	echo "Sum=$sum"
	echo "Average=$avg"
