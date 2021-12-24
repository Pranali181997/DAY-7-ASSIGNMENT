#!/bin/bash 

# script to find prime factors

echo "Enter number :"
read input
if [ $input -lt 1 ];then
	echo "enter number is greater than 1"
exit 1
fi
# find factors and prime

i=2
count=0
flag=0
for ((i;i<$input;))
do

if [[ $input % $i -eq 0 ]]
then
      factor=$i

for ((j=2;j<= $factor / 2))
do
	flag=0
      if [[ $factor % $j -eq 0 ]] 
	then
      		flag=1
	break
      fi
                j=`expr $j+1`
done
	if [[ $flag -eq 0 ]]
	then
		echo "[ $factor ]"
  		count=1
  	fi
	fi
		(( i++ ))
	done
	if [[ $count -eq 0 ]]
	then
		echo "no prime factors found except 1 and $input"
	fi

