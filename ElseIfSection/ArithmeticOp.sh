#!/bin/bash -x
read -p "Enter First No:" no1
read -p "Enter Second No:" no2
read -p "Enter Third No:" no3

result1=$(($no1+$no2*$no3))
echo $result1

result2=$(($no1%$no2+$no3))
echo  $result2

result3=$(($no3+$no1/$no2))
echo $result3

result4=$(($no1*$no2+$no3))
echo $result4

if [ $result1 -gt $result2 -a $result1 -gt $result3 -a $result1 -gt $result4 ]
then
	echo "$result1 is Maximum result"
elif [ $result2 -gt $result1 -a $result2 -gt $result3 -a $result2 -gt $result4 ]
then
	echo "$result2 is Maximum result"
elif [ $result3 -gt $result1 -a $result3 -gt $result2 -a $result3 -gt $result4 ]
then
	echo "$result3 is Maximum result"
elif [ $result4 -gt $result1 -a $result4 -gt $result2 -a $result4 -gt $result3 ]
then
	echo "$result4 is Maximum result"
fi

if [ $result1 -lt $result2 -a $result1 -lt $result3 -a $result1 -lt $result4 ]
then
	echo "$result1 is Minimum result"
elif [ $result2 -lt $result1 -a $result2 -lt $result3 -a $result2 -lt $result4 ]
then
	echo "$result2 is Minimum result"
elif [ $result3 -lt $result1 -a $result3 -lt $result2 -a $result3 -lt $result4 ]
then
	echo "$result3 is Minimum result"
elif [ $result4 -lt $result1 -a $result4 -lt $result2 -a $result4 -lt $result3 ]
then
	echo "$result4 is Minimum result"
fi

