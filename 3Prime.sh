#!/bin/bash

#function to determine if a number is prime or not
#input should always be greate than 1

function isPrime() {
	x=$1
	flag=1
	i=2
	while [ $i -lt $x ];
	do
		if [ $(($x%$i)) -eq 0 ];
		then
			#$x is Not Prime
			flag=0;
			break
		else
			((i++));
		fi
	done

	#code to print if the number is prime or not
	#if [ $flag -eq 1 ];then
		#echo "$x is Prime"
	#else
		#echo "$x is Not Prime"
	#fi
}

function primeFactorize() {
	primeFactors=()
	y=$1
	j=2
	while [[ $y -gt 1 ]]; do
		isPrime $j;
		if [[ $flag -eq 1 ]];then
			if [ $(($y % $j)) -eq 0 ];then
				y=$(($y/$j));
				primeFactors+=($j);
			else
				((j++));
			fi
		else
			((j++))
		fi
	done
	echo $"The prime factors of $1 are: ${primeFactors[@]}"
}


read -p "Enter a positive integer greater than 1 to be Prime Factorized: " z

if [ $z -gt 1 ];then
	primeFactorize $z;
else
	echo "ERROR: Enter a vaild number greater than 1 !"
fi
