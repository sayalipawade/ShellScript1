#!/bin/bash -x 
function Fahrenheit()
{
	read -p "Enter Temperature:" temperature
	degF=`echo "$(($temperature*(9/5)+32))" | bc -l`
	echo $degF
}
function Celcius()
{
	read -p "Enter Temprature:" temperature1
	degC=`echo "$((($temperature1-32)*5/9))" | bc -l`
	echo $degC
}

echo "1.Celcius to Fahrenheit conversion"
echo "2.Fahrenheit to Celcius Conversion" 
read -p "Enter your choice:" choice
case $choice in
		1) Fahrenheit  
		;;
		2) Celcius 
		;;
		*)
		echo "Wrong Input"
esac

			
 
