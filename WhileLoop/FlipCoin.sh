#!/bin/bash -x 
Head=0
Tail=1
cnt=1
while [[ $cnt -gt 0 ]]
do
	toss=$(( RANDOM%2 ))
	if [ $toss -eq 1 ]
	then
			echo "Head:$Head"
		(( Head++ ))
	else
			echo "Tail:$Tail"
		(( Tail++ ))
	fi

	if [ $Head -eq 11 ]
	then
			echo "Head Wins"
			exit
	elif [ $Tail -eq 11 ]
	then
			echo "Tail wins"
			exit
	fi
	(( cnt++ ))
done 

