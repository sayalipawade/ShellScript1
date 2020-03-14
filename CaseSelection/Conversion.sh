#!/bin/bash -x
echo "1.Feet To Inch"
echo "2.Feet To Meter"
echo "3.Inch To Feet"
echo "4.Meter To Feet"
read -p "Enter your choice:" ch
case $ch in
		1)
			read -p "Enter Feet:" feet
			inches=$((feet*12))
			echo "$inches"
			;;
		2)
			read -p "Enter Feet:" feet
			meter=`echo "$feet*0.3048" | bc` 
			;;
		3)
			read -p "Enter Inches:" inches
			feet=$((inches/12))
			echo "$feet"
			;;
		4)
			read -p "Enter Meter:" meter
			feet=`echo "$meter*3.2808" | bc`
			echo "$feet"
			;;

		*)
			echo "Invalid choice"
esac 
