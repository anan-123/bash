#!/bin/bash

echo "Enter A:"
read a
echo "Enter B:"
read b

if [ $a -gt $b ]
then
tem=$a
a=$b
b=$tem
fi

gcdfun()
{
n1=$1
n2=$2
((pro=$n1*$n2))
while [ $n2 -gt 0 ]
do
 tem=$n2 
 ((n2=$n1%$n2))
 n1=$tem
done
gcd=$n1
echo "GCD:$gcd"
}

lcmfun()
{
((lcm=$pro/$gcd))
echo "LCM:$lcm"
}

gcdfun $b $a
lcmfun 
