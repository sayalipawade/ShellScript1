#!/bin/bash -x
No=$((RANDOM%2))
if [ $No -eq 0 ]
then 
		echo "Head"
else
		echo "Tail"
fi 
