#!/bin/bash +x
read -p "Enter Day:" day
read -p "Enter Month:" month
if [ $day -le 20 && $month -eq 3 ] || [ $day -ge 30 && $month -eq 4 ] || [ $day -ge 31 && $month -eq 5 ] || [ $day -le 20 && $month -eq 6 ]
then 
	echo "true";
else
	echo "false";
fi
