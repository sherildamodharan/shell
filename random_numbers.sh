#!/bin/bash
# Script: random_numbers.sh
# Description: Generates random numbers from 1 to 10 and sorts them randomly.
# Usage: ./random_numbers.sh
# Build Instructions: No special build instructions required. Ensure the script has execute permission.
# Known Limitations / Bugs: None known at the moment.

# Generate random numbers from 1 to 10
for ((i=1; i<=10; i++)); do
    echo $i
done | sort -R
