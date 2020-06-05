#!/bin/bash -x
low=1
count=0

while [ $low -eq 1 ]
do
        echo "Enter the lower limit, greater than 1"
        read low
done

echo "Enter the upper limit"
read upper

for num in `seq $low $upper`
do
        result=$( factor $num | grep $num | cut -d " " -f 2 )

        if [ "$result" -eq "$num" ]
        then
                echo "$num is prime"
                (( count++ ))
        fi
done

echo  "\n There are $count number of prime numbers"


