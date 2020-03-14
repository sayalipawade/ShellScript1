#!/bin/bash +x
read -p "Enter No:" No
for(( i=2;i*i<=No;i++))
do
		while [ $((No%i)) -eq 0 ]
		do
			echo "$i"
			No=$((No/i))
		done
done
