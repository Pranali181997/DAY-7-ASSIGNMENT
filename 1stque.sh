#!/bin/bash -x

L=$((RANDOM%899 +100))
M=$((RANDOM%899 +100))
N=$((RANDOM%899 +100))
O=$((RANDOM%899 +100))
P=$((RANDOM%899 +100))
Q=$((RANDOM%899 +100))
R=$((RANDOM%899 +100))
S=$((RANDOM%899 +100))
T=$((RANDOM%899 +100))
U=$((RANDOM%899 +100))


counter=0
Numbers[((counter++))]="$L"
Numbers[((counter++))]="$M"
Numbers[((counter++))]="$N"
Numbers[((counter++))]="$O"
Numbers[((counter++))]="$P"
Numbers[((counter++))]="$Q"
Numbers[((counter++))]="$R"
Numbers[((counter++))]="$S"
Numbers[((counter++))]="$T"
Numbers[((counter++))]="$U"

echo ${Numbers[@]}

Numbers=($L $M $N $O $P $Q $R $S $T $U)

if [ "${#Numbers[@]}" -lt 2 ]
then
  echo Incoming numbers is not large enough >&2
  exit 1
fi

largest=${Numbers[0]}
secondGreatest='unset'

for((i=1; i < ${#Numbers[@]}; i++))
do
  if [[ ${Numbers[i]} > $largest ]]
  then
    secondGreatest=$largest
    largest=${Numbers[i]}
  elif (( ${Numbers[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${Numbers[i]} > $secondGreatest ]]; }
  then
    secondGreatest=${Numbers[i]}
  fi
done

echo "secondGreatest = $secondGreatest"


if [ "${#Numbers[@]}" -lt 2 ]
then
  echo Incoming numbers is not large enough <&2
  exit 1
fi

smallest=${Numbers[0]}
secondSmallest='unset'

for((i=1; i < ${#Numbers[@]}; i++))
do
  if [[ ${Numbers[i]} < $smallest ]]
  then
    secondSmallest=$smallest
    smallest=${Numbers[i]}
  elif (( ${Numbers[i]} != $smallest )) && { [[ "$secondSmallest" = "unset" ]] || [[ ${Numbers[i]} < $secondSmallest ]]; }
  then
    secondSmallest=${Numbers[i]}
  fi
done

echo "secondSmallest = $secondSmallest"
