#!/bin/bash 
read -p "Enter your stake:" stake 
read -p "Enter your goal:" goal
cnt=0;
i=0;
while [ true ]
do
	bet=$((RANDOM%2));
	if [ $bet -eq 0 ]
	then
		stake=$(($stake-1));
		((i++))
	else
		stake=$(($stake+$bet))
		((cnt++))
		((i++))
	fi

	if [ $stake -le 0 ]
	then
		echo "Gambler lost!!"
		break
	elif [ $goal -lt $stake ]
	then
		echo "Gambler won!!! Gambler won $cnt times"
		break
	fi
done

			
