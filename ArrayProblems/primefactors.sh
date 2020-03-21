#!/bin/bash -x
declare -A array
read -p "Enter No:" No
for ((i=2;i<=$No;i++))
do
		if [[ $(($No%$i)) -eq 0 ]]
		then
			count=0
			while [[ $(($No%$i)) -eq 0 ]]
			do
				No=$(($No/$i))
				((count++))
			done
			array[$i]=$i
		fi
done
echo "${array[@]}"
