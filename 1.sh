#!/bin/bash
echo "Enter String"
read input
reverse=""
len=${#input}
for ((i = $len - 1; i >= 0; i--)); do
    reverse="$reverse${input:$i:1}"
done
if [ $input == $reverse ]; then
    echo "$input is a Palindrome"
else
    echo "$input is not a Palindrome"
fi
