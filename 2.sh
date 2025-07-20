#!/bin/bash
echo "Enter rhe Number"
read number
sum=0
temp_number=$number
while [[ $temp_number -gt 0 ]]; do
    digit=$(($temp_number % 10))
    sum=$(($sum + $digit))
    temp_number=$(($temp_number / 10))
done
echo "The sum of the digits of $number is: $sum"
