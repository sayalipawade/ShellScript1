#!/bin/bash -x
args=("$@")
echo $@
mon=${args[0]}
day=${args[1]}
yr=${args[2]}

yr0=$(( $yr-( 14 - $mon ) / 12 ))
x=$(( $yr0 + $yr0 / 4 - $yr0 / 100 + $yr0 / 400 ))
mon0=$(( $mon + 12 * (( 14 - $mon ) / 12 ) -2 ))
day0=$(( ($day + $x + 31 * $mon0 / 12 ) % 7 ))

case $day0 in
		0)
			echo "$@ is sunday"
			;;
		1)
			echo "$@ is monday"
			;;
		2)
			echo "$@ is Tuesday"
			;;
		3)
			echo "$@ is Wednesday"
			;;
		4)
			echo "$@ is Thursday"
			;;
		5)
			echo "$@ is Friday"
			;;
		6)
			echo "$@ is saturday"
			;;
		*)
			echo "Invalid input"
esac
