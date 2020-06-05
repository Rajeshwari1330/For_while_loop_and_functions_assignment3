#!/bin/bash -x
echo "Enter the nth haronic no. which you want to find : "
read num
echo "Harmonic no.s are : "
value=0;
for((i=1;i<=num;i++))
do
        value=`echo "scale=2; ($value+(1/$i))" | bc`
        echo "H$i => $value"
        echo
done



