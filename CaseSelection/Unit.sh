#!/bin/bash -x
read -p "Enter No:" No
case $No in
		1)
			echo "Unit";
			;;
		10)
			echo "Tens";
			;;
		100)
			echo "Hundreads";
			;;
		1000)
			echo "Thousands";
			;;
		*)
			echo "Invalid";
			;;
esac

