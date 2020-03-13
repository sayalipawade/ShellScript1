#!/bin/bash
read -p "Enter Year:" year
year=$(($year%4))
if [ $year -eq 0 ];
then
		echo "Leap Year"
else
		echo "Not Leap Year"
fi
