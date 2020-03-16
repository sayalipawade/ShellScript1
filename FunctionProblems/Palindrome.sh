#!/bin/bash -x
function IsPalindrome1()
{
	No=$1
	rev=0
	while [[ $No -ne 0 ]]
	do
		rem=$(($No%10))
		rev=$((($rev*10)+$rem))
		No=$(($No/10))
	done
	if [[ $rev == $1 ]]
	then
		echo $rev
	else
		echo "Not palindrome"
	fi
}

read -p "Enter First Number:" Number1
read -p "Enter Second Number:" Number2
result1=$( IsPalindrome1 $Number1 )
result2=$( IsPalindrome1 $Number2 )

if [ $result1 -eq $result2 ]
then
		echo "Both are same and Palindrome"
else
		echo "Both are not same"
fi
		
	
