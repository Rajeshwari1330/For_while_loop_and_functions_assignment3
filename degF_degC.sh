#!/bin/bash -x

echo "1. Convert the Celsius to fahrenheit "
echo "2. Convert the fahrenheit to celsius "

echo -n "Select your choice : "
read choice

function degF() {
        Fahrenheit=`echo "scale=2; ((9/5) * $Celsius_val) + 32" | bc`
}

function degC() {
        Celsius=`echo "scale=2; (5/9) * ($Fahrenheit_val - 32)" | bc`
}

case $choice in
1)
        echo -n "Enter a temperature in celsius : "
        read Celsius_val
        degF
        echo "$Celsius_val C = $Fahrenheit F"
        ;;
2)
        echo -n "Enter a temperature in Fahrenheit : "
        read Fahrenheit_val
        degC
        echo "$Fahrenheit_val F = $Celsius C"
        ;;
*)
        echo "Invalid ...! Enter correct input "
        ;;
esac

