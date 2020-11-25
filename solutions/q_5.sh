#!/bin/bash

echo "Please enter your SGPA:"
read x

if [ $(echo "5>$x"|bc) -eq 1 ]
then
echo "PROBATION"
fi

y=$(echo "16-$x"|bc)


if [ $(echo "6>$x"|bc) -eq 1 ]
then
echo "AGLE SEM PHOD DENGE"
else
echo "You need SGPA $y next sem"
fi
