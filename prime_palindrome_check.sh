!/bin/bash -x
echo "Enter a number : "
read number

if(($number<=0))
then
        echo "Invalid .... please enter the value greater than zero"
        exit
fi

num=2
flag=0

function Check_prime() 
{
while [[ $num -le `expr $number / 2` ]]
do
        if [[ `expr $number % $num` -eq 0 ]]
        then
                flag=1
        fi

        num=`expr $num + 1`
done

if [[ $flag -eq 1 ]]
then
        echo "Number is Not Prime"
else
        echo "Number is Prime"
fi
}
Check_prime
temp=$number

function 1to10()
{
if(($temp<=10))
then
        test=1
                if(($test==1))
                then
                        echo "$temp is not correct for checking palindrome"
                        echo "SORRYYYYY!!!!! enter the correct input for it that must be greater than 10"
                fi
        exit

fi
}
function Check_palindrome()
{
        while [ $number -gt 0 ]
        do
                remainder=$(( $number % 10 ))
                number=$(( $number / 10 ))

                reverse=$( echo $reverse$remainder )
        done

        if [ $temp -eq $reverse ]
        then

                1to10
                echo "Number is Palindrome"
        else
                echo "Number is NOT palindrome"
        fi
}
Check_palindrome

prime="Check_prime"
palindrome="Check_palindrome"

if(($reverse==$temp && $flag==0))
then
        echo "Entered number is Prime and Palindrome both"

elif(($flag==0))
then
        echo "Entered number is only prime not palindrome"
elif(($reverse==$temp))
then
        echo "Entered number is not prime but palindrome"
else
        echo "Entered number is neither prime nor palindrome"
fi


