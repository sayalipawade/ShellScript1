#!/bin/bash -x
read -p "Enter No:" No
if [ $No -eq 1 ]
then 
	echo "Unit"
elif [ $No -eq 10 ]
then
	echo "Ten"
elif [ $No -eq 100 ]
then 
	echo "Hundread"
elif [ $No -eq 1000 ]
then 
	echo "Thousand"
fi 
