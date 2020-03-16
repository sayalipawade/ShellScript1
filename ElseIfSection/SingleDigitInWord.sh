#!/bin/bash -x
read -p "Enter Single Digit No:" No
echo $No
if [ $No -eq 0 ]
then
	echo "Zero"
elif [ $No -eq 1 ]
then
	echo "One"
elif [ $No -eq 2 ]
then
	echo "Two"
elif [ $No -eq 3 ]
then
	echo "Three"
elif [ $No -eq 4 ]
then 
	echo "Four"
elif [ $No -eq 5 ]
then
	echo "Five"
elif [ $No -eq 6 ]
then
	echo "Six"
elif [ $No -eq 7 ]
then
	echo "Seven"
elif [ $No -eq 8 ]
then
	echo "Eight"
elif [ $No -eq 9 ]
then
	echo "Nine"
else
	echo "Not valid No"
fi


