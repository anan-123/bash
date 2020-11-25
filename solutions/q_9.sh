#!/bin/bash

r=$1

while [ $r -gt 0 ] 
do
if [ $r -ge 500 ]
then
  echo -n "D"
  ((r=$r-500))
elif [ $r -ge 400 ]
then
  echo -n "CD"
  ((r=$r-400))
elif [ $r -ge 100 ]
then
  echo -n "C"
  ((r=$r-100))
elif [ $r -ge 90 ]
then
  echo -n "XC"
  ((r=$r-90))
elif [ $r -ge 50 ]
then
  echo -n "L"
  ((r=$r-50))
elif [ $r -ge 40 ]
then
  echo -n "XL"
  ((r=$r-40))
elif [ $r -ge 10 ]
then
  echo -n "X"
  ((r=$r-10))
elif [ $r -ge 9 ]
then
  echo -n "IX"
  ((r=$r-9))
elif [ $r -ge 5 ]
then
  echo -n "V"
  ((r=$r-5))
elif [ $r -ge 4 ]
then
  echo -n "IV"
  ((r=$r-4))
elif [ $r -ge 1 ]
then
  echo -n "I" 
  ((r=$r-1))
fi
done



printf "\n"
