#!/bin/bash -x
echo "Enter a number : "
read number

remainder=0;
reverse=" "

temp=$number

function CheckPalindrome() {
        while [ $number -gt 0 ]
        do
                remainder=$(( $number % 10 ))
                number=$(( $number / 10 ))

                reverse=$( echo ${reverse}${remainder} )
        done

        if [ $temp -eq $reverse ]
        then
                echo "Number is Palindrome"
        else
                echo "Number is NOT palindrome"
        fi
}
CheckPalindrome


