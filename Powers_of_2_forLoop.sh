#!/bin/bash -x
echo "Enter the variable to which you want to print 2 raise to n:"
read n
echo "values of table are:"
for((i=0;i<=n;i++))
do
        value=$((2**i));
        echo "2^$i => $value"
done

