#!/bin/bash 
function RepeatedDigit()
{
	count=0;
	for (( No=10;No<=100;No++))
	do
		rev=0
		temp=$No
		while [[ $temp -ne 0 ]]
		do
			digit=$(($temp%10))
			rev=$(($rev*10+$digit))
			temp=$(($temp/10))
		done
			if [[ $No -eq $rev ]]
			then
				array[((count++))]=$No
			fi
		done
		echo "${array[@]}"	
}

RepeatedDigit

	
