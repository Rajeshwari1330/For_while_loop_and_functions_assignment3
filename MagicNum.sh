#!/bin/bash -x
echo "Enter the no which u want to between 1 and 100"
read num

if(($num<=1 || $num>=100))
then
        echo "Please enter the input within range"
        exit
fi
echo "wait!!!!!!!!!!!!"
echo "Program is processing"

sleep 5

start=1
end=100
function test()
{
test1=$(($start + $end))
test2=$(($test1/2))
}
test
while(($num!=$test2))
do
        if(($num <= $test2))
        then
                start=$start
                end=$test2
                test
        elif(($num >= $test2))
        then
                end=$end
                start=$test2
                test
        fi
done
echo "the number you choosed is $test2"
echo "this is magic"








