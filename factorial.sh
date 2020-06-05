#!/bin/bash -x

echo "Enter a number :"
read number

factorial_num=1

for((count=1;count<=number;count++))
do
        factorial_num=$(( factorial_num * count ))
done

echo "Factorial of $number is :   $factorial_num"

