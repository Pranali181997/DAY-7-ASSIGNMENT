#!/bin/bash 

array=()
valid=True
count=0

while [ $valid ]
do
	var=$(( RANDOM%900+100 ))
	array+=($var)
	count=$(( $count+1 ))
	if [ $count -eq 10 ]
	then
		break
	fi
done

echo ${array[@]}
len=${#array[@]}
echo "length is- " $len

large1=0
large2=0

smallest=${array[0]}
small2=${array[0]}

for ((i=0; i<$len; i++))
do
	if [ ${array[i]} -gt $large1 ]
	then
		large1=${array[i]}
	fi
	if [ ${array[i]} -lt $smallest ]
	then
		smallest=${array[i]}
	fi
done

for ((j=0; j<$len; j++))
do
   if [[ ${array[j]} -gt $large2 && ${array[j]} -ne $large1 ]]
   then
      large2=${array[j]}
   fi
	if [[ ${array[j]} -lt $small2 && ${array[j]} -ne $smallest ]]
	then
		small2=${array[j]}
	fi
done


echo "First largest number in an array- " $large1
echo "Second largest number in an array- " $large2
echo "First smallest number in an array- " $smallest
echo "Second smallest number in an array- " $small2
