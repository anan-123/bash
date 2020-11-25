

#!/bin/bash

arr=( "$@" )

n=$#
p=$((n-1))
for ((i=0; i<$p; i++))
do
        c=$i
	for ((j=$((i+1)); j<$n; j++))
	do
		if ((${arr[$j]} < ${arr[$c]}))
		then
                    c=$j
                fi
	done
	temp=${arr[$i]}
	arr[$i]=${arr[$c]}
	arr[$c]=$temp

done
for ((i=0; i<$n; i++))
do
	echo -n ${arr[$i]}" "
done
printf "\n"
