#!/bin/bash 
read -p "Enter start:" start
read -p "Enter End:" end

for (( i=$start;$i<=$end;i++ ))
do
	cnt=0;
	for(( j=1;$j<=$i;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			((cnt++))
		fi
	done
 	
	if [ $cnt -eq 2 ]
	then
		echo "$i"
	fi
done
