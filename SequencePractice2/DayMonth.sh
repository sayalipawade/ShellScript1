#!/bin/bash -x
read -p "Enter day:" day
read -p "Enter Month:" Month
if [ $Month -le 3 -a $day -le 20 ]
then
	echo "false"
elif [ $Month -ge 6 -a $day -ge 20 ]
then
	echo "false"
else
	echo "true"
fi
	
