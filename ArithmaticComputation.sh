#!/bin/bash

echo "Welcome to arithmatic computation and sorting program"
read -p "Enter the value 1 : " a
read -p "Enter the value 2 : " b
read -p "Enter the value 3 : " c
calculate=$((a + (b * c)))
echo $calculate
calculate1=$(((a * b) + c))
echo $calculate1
calculate2=$((c + (a / b)))
echo $calculate2
calculate3=$(((a % b) + c))
echo $calculate3
declare -A calculatedvalue
calculatedvalue["key1"]=$calculate
calculatedvalue["key2"]=$calculate1
calculatedvalue["key3"]=$calculate2
calculatedvalue["key4"]=$calculate3
echo ${!calculatedvalue[@]}
echo ${calculatedvalue[@]}
echo ${#calculatedvalue[@]}
array1=($calculate $calculate1 $calculate2 $calculate3)
echo ${array1[@]}
for (( i=0; i<4; i++ ))
do
 for ((j=0; j<$((4-($i-1))); j++))
  if [ ${array1[j]} -lt ${array1[$(($j+1))]} ]
  then
   temp=${array1[j]}
   array1[$j]=${array1[$(($j+1))]}
   array1[$(($j+1))]=$temp
  fi
 done
done
echo "The array in descending sorted order is :" ${array[@]}
