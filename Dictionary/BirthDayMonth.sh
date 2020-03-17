#!/bin/bash -x 
declare -A MonthDictionary
read -p "Enter Year:" year
if [[ $year==1992 || $year==1993 ]]
then
		peoplecnt=0
		while [[ $peoplecnt -le 50 ]]
		do
			Month=$(((RANDOM%12)+1))
			MonthDictionary[$Month]=$((${MonthDictionary[$Month]}+1))
			(( peoplecnt++ ))
		done
		echo "key:${!MonthDictionary[@]}"
		echo "values:${MonthDictionary[@]}"
else
	echo "Not valid year"
fi

