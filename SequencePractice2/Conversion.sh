#!/bin/bash -x
read -p "Enter No of Inch:" Inch
echo "Foot is:"
echo "($Inch/12)" | bc -l

read -p "Enter length:" l
read -p "Enter Breath:" b
Area=$((l*b))
echo "Meter is:" 
Meter=`echo "($Area/3.28)" | bc -l`;
echo $Meter

read -p "Enter No of Plots:" plots
echo "Total Area:"
TotalArea=`echo "($Meter*$plots)" | bc -l`;
echo $TotalArea
echo "Plot Acre:"
PlotAcre=`echo "($TotalArea/4048.8)" | bc -l`;
echo $PlotAcre

