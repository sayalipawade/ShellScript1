#!/bin/bash -x
Max=0
for(( i=1;i<=5;i++))
do
	No=$((RANDOM%1000))
	if [ $No -gt $Max ]
	then
		Max=$No
	fi
done
	echo "Maximum is:$Max"
Min=$Max
for(( i=1;i<=5;i++))
do
	No=$((RANDOM%1000))
	if [ $No -lt $Min ]
	then
		Min=$No
	fi
done
	echo "Minimum is:$Min"



