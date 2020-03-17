#!/bin/bash -x
function Triplet()
{
	count=0
	for(( i=0;i<size;i++))
	do
		for(( j=i+1;j<size;j++))
		do
			for(( k=j+1;k<size;k++))
			do
				if [ $((${array[i]}+${array[j]}+${array[k]})) -eq 0 ]
				then
					Array1[((count++))]=${array[i]}
					Array1[((count++))]=${array[j]}
					Array1[((count++))]=${array[k]}
				fi
			done
		done
	done
}

read -p "Enter size of an array:" size
for(( i=0;i<$size;i++))
do
	read -p "Enter element:" element
	array[i]=$element
done
echo ${array[@]}
Triplet ${array[@]}
echo  "${Array1[@]}"

