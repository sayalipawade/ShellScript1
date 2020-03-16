#!/bin/bash -x  
read -p "Enter No:" No
result=1
cnt=1
while [[ $cnt -le $No ]]
do
		result=$(( $result*2 ))
		echo $result
		(( cnt++ ))
done

