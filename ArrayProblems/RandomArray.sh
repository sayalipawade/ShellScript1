#!/bin/bash -x     
function RandomNoGeneration()
{
		for (( i=0;i<10;i++))
		do
			No=$((RANDOM%1000))
			array[i]=$No
		done
		echo ${array[@]}
#generating Second Smallest in array
		small=${array[0]}
		secondsmall=0
		for ((i=0;i<10;i++))
		do
			if (( ${array[$i]}<$small ))
			then
				secondsmall=$small
				small=${array[i]}
			elif (( $secondsmall!=$small )) && (( $secondsmall>${array[i]} ))
			then
				secondsmall=${array[i]} 
			fi
		done	
		echo "Second Smallest=$secondsmall"
#generating second largest in array
		large=${array[0]}
		secondLarge=0
		for (( i=0;i<10;i++))
		do
			if(( ${array[$i]}>$large ))
			then
				secondLarge=$large
				large=${array[i]}
			elif (( $secondLarge!=$large )) && (($secondLarge<${array[i]} ))
			then
				secondLarge=${array[i]}
			fi
		done
		echo "Second largest=$secondLarge" 

		
}

RandomNoGeneration

