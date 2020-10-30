#!/bin/bash

echo "Welcome to arithmatic computation and sorting program"
read -p "Enter the value 1 : " a
read -p "Enter the value 2 : " b
read -p "Enter the value 3 : " c
calculate=$((a + (b * c)))
echo $calculate
calculate1=$(((a * b) + c))
echo $calculate1
