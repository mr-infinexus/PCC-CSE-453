#!/bin/bash
for ((i = 0; i < 3; i++)); do
    for ((j = 0; j < 3 - i; j++)); do
        echo -n " "
    done
    for ((k = 0; k < 2 * i + 1; k++)); do
        echo -n "*"
    done
    echo
done
