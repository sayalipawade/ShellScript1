#!/bin/bash -x 
low=1
high=100
echo "Think any number between 1 to 100:" 
while [ $low -le $high ]
    do
		mid=$(( ($low+$high)/2 ))
		read -p "If your no is less than $mid enter 'y',If your no is greater than $mid enter 'n',otherwise enter 'f':" ans
		if [[ $ans == "f" ]] 
		then
			 	echo "Your number is $mid number"
				break
		elif [[ $ans == "y" ]]
		then
				high=$(($mid))
		elif [[ $ans == "n" ]] 
		then
				low=$(($mid))
		fi
			mid=$(( ($low+$high)/2 ))

	done
							
 
 
 
				 
