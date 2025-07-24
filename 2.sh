#!/bin/bash
echo "Enter the Number"
read number
sum=0
temp=$number
while [[ $temp -gt 0 ]]; do
    digit=$(($temp % 10))
    sum=$(($sum + $digit))
    temp=$(($temp / 10))
done
echo "The sum of the digits of $number is: $sum"
