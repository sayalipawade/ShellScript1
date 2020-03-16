#!/bin/bash -x
cnt=0;
read -p "Enter No:" No
for(( i=1;i<=No;i++))
do
	if [ $((No%i)) -eq 0 ]
	then
		(( cnt++ ))
	fi
done
if [ $cnt -eq 2 ]
then
	echo "Prime No"
else
	echo "Not Prime"
fi
