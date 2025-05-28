#!/bin/bash
# This script calculates the hypotenuse of a right triangle given the lengths of the other two sides.
# Usage: ./pythagorean.sh <a> <b>

#function definition
hypotenuse() {
    local a=$1
    local b=$2
    # Calculate the hypotenuse using the square root of the sum of the square of both sides 
    local hypotenuse=$(echo "scale=6; sqrt($a^2 + $b^2)" | bc -l)
    # Print the result
    echo "The length of the hypotenuse is: $hypotenuse"
}

#prompt user for input
echo "Enter the length of side a:"
read a
echo "Enter the length of side b:"
read b

#call the function
hypotenuse $a $b