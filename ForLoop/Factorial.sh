#!/bin/bash +x
read -p "Enter No:" No
fact=1;
for(( i=1;i<=No;i++))
do
		fact=$(( $fact*$i ))
done
	echo "$fact"
