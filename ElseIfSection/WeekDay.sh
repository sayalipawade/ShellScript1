#!/bin/bash
read -p "Enter Day No:" No
if [ $No -eq 1 ]
then
		echo "Sunday"
elif [ $No -eq 2 ]
then 
		echo "Monday"
elif [ $No -eq 3 ]
then
		echo "Tuesday"
elif [ $No -eq  4 ]
then 
		echo "Wednesday"
elif [ $No -eq 5 ]
then
		echo "Thursday"
elif [ $No -eq 6 ]
then 
		echo "Friday"
elif [ $No -eq 7 ]
then 
		echo "Saturday"
else
		echo "Not valid"
fi
