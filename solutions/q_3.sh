

#!/bin/bash

x=$1
i=0
ping -c $x google.com | while read var
do
if [ $i -eq 0 ]
then 
echo $var
(( i=$i+1 ))
elif [ $i -le $x ]
then
echo "$i. $var"
(( i=$i+1 ))
else
echo $var
fi
done


