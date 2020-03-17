#!/bin/bash -x
function PrimeFactors()
{
	value=0
	for ((i=2;i<=$No;i++))
	do
		count=0;
		for ((j=1;j<=$i;j++))
		do
			if [ $(($i%$j)) -eq 0 -a $(($No%$i)) -eq 0 ]
			then
				(( count++ ))
			fi
		done
		if [[ $count -eq 2 ]]
		then
			array[$value]=$i
			((value++))
		fi
	done
}
read -p "Enter Number:" No
PrimeFactors $No 
echo "${array[@]}"

			
