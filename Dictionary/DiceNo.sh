#!/bin/bash -x 
declare -A Dictionary
random=1
while [[ Dictionary[$random] -ne 10 ]] 
do
	random=$((RANDOM%6+1))
	Dictionary[$random]=$((${Dictionary[$random]}+1))
	max=$random
done
	
echo "keys  :${!Dictionary[@]}"      
echo "values:${Dictionary[@]}"
echo "Maximum occurence : $max"

min=${Dictionary[1]}
for (( i=1;i<=6;i++))
do
	if [ ${Dictionary[$i]} -lt $min ]
	then
		min=${Dictionary[$i]}
		minKey=$i
	fi
done 
echo "Minimum Occurence:$minKey"
