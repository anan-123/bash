#!/bin/bash

echo "Enter name:"
read name 

echo "Enter DOB:"
read n

m1=$( echo $n | cut -f1 -d"-" )

y1=$( echo $n | cut -f2 -d"-" )

m2=$(date "+%m" )

y2=$(date "+%Y" )

if [ $m2 -lt $m1 ]
then
((s1=$y2-$y1-1))
((s1=$s1*12))
((s2=12+$m2-$m1))
else
((s1=$y2-$y1))
((s1=$s1*12))
((s2=$m2-$m1))
fi
((sum=$s1+$s2))


echo "Hello $name your age is $sum months."

