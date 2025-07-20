#!/bin/bash
echo "Enter the Number"
read number
if [[ $number -le 1 ]]; then
    echo "$number is not a prime number"
    exit 0
fi
is_prime=true
divisor=2
while [[ $((divisor * divisor)) -le $number ]]; do
    if [[ $((number % divisor)) -eq 0 ]]; then
        is_prime=false
        break
    fi
    divisor=$((divisor + 1))
done
if [[ $is_prime == true ]]; then
    echo "$number is a prime number"
else
    echo "$number is not a prime number"
fi
