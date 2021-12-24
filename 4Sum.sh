#!/bin/bash 

Integer=( 1 2 3 4 5 6 7 -1 -2 -3 -4 -9)
echo ${Integer[@]}
len=${#Integer[@]}

for ((i=0; i<$len; i++))
do
	for ((j=$i+1; j<$len; j++))
	do
		for ((k=$j+1; k<$len; k++))
		do
			if [ $((${Integer[i]}+${Integer[j]}+${Integer[k]})) -eq 0 ]
			then
				echo "${Integer[i]} ${Integer[j]} ${Integer[k]}"
			fi
		done
	done
done
