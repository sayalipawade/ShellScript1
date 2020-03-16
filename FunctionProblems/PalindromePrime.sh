#!/bin/bash -x
function IsPrime()
{
	No=$1
	cnt=0
	for(( i=1;i<=$No;i++))
	do
			if [[ $No%$i -eq 0 ]]
			then
					(( cnt++ ))
			fi
	done 
	if [[ $cnt -eq 2 ]]
	then
			echo $1
	else
			break
	fi
}

function IsPalindrome()
{
	No=$1
	temp=$No;
	rev=0
	while [[ $No -ne 0 ]]
	do
		rem=$(($No%10))
		rev=$((($rev*10)+$rem))
		No=$(($No/10))
	done
	if [ $rev -eq $temp ]
	then
			result=$( IsPrime $rev )
			echo $result
	else
			break
	fi 
}

read -p "Enter No:" Number
Ans1=$( IsPrime $Number ) 
Ans2=$( IsPalindrome $Number ) 

if [ $Ans1  -eq $Ans2 ]
then
	echo "Both number are same"
else
	echo "Not same" 
fi
