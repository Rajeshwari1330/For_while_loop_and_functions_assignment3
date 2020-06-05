#!/bin/bash -x
echo "enter the no of times you want to play the flip game"
read a

function flip()
{
n=$((RANDOM%2 + 1))
if(($n==1))
then
        echo "OUTPUTT IS HEAD"
else
        echo "OUTPUTT IS TAIL"
fi
}

if(($a<=10))
then
        echo "give input greater than 10"
        exit
fi

i=1
b=1
c=1
while(($i<=$a))
do
        flip
       if(($n==1))
        then
                echo "head number is $b"
                b=`expr $b + 1`
                if(($b == 11))
                then
                        echo "HEAD IS WINNER"
                        exit
                fi
        else
                echo "tail number is $c"
                c=`expr $c + 1`
                if(($c == 11))
                then
                       echo "TAIL IS WINNER"
                        exit
                fi
        fi
i=`expr $i + 1`
done

