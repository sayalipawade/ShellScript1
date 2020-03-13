#!/bin/bash -x
a=10
b=5
c=30
echo "($a+$b*$c)" | bc -l
echo "($c+$a/$b)" | bc -l
echo "($a%$b+$c)" | bc -l
echo "($a*$b+$c)" | bc -l

