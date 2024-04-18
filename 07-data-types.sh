#!/bin/bash

num1=$1
num2=$2

SUM=$((num1+num2))
echo "Summation of $num1 + $num2 is: $SUM"

SUM=$((num1-num2))
echo "Difference of $num1 - $num2 is: $SUM"

SUM=$((num1/num2))
echo "Division of $num1 / $num2 is: $SUM"

SUM=$((num1*num2))
echo "Multiply of $num1 * $num2 is: $SUM"

SUM=$((num1%num2))
echo "Modulo of $num1 % $num2 is: $SUM"















