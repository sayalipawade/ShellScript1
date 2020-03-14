#!/bin/bash -x
read -p "Enter No:" No
sum=0;
for(( i=1;$i<=$No;i++))
do	
		sum=`echo "$sum+(1/$i)"|bc -l`;
		
done
		echo "$sum"
		
