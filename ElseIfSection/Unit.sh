#!/bin/bash -x
read -p "Enter No:" No
if [ $No -le 9 ]
then 
		printf "Unit"
elif [ $No -ge 9 -a $No -le 99 ]
then
		printf "Ten"
elif [ $No -ge 99 -a $No -le 999 ]
then 
		printf "Hundread"
elif [ $No -ge 999 -a $No -le 9999 ]
then 
		printf "Thousand"
fi 
