#!/bin/bash -x
echo "enter the value of n for raising power"
read n
echo "values of table are:"
i=0
while(($i<$n))
do
        value=$((2**i));
        if(($value==256))
        then
                echo "sorry, you have reached 256"
                exit
        fi
        echo "2^$i => $value"
i=`expr $i + 1`
done

