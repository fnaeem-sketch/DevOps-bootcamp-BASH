#!/bin/bash

# Basic Arithmetic - Write a script that takes two numbers as input
# from the user and performs basic arithmetic operations (addition,
# subtraction, multiplication, and division) and then displays all the
# answers of those operations in the terminal.

read -p "enter first number: " num1
read -p "enter second number: " num2

sum=$((num1+num2))
product=$((num1*num2))
difference=$((num1-num2))

if [ $num2 -eq 0 ]
then 
    quotient="division by 0 not allowed"
else
    quotient=$((num1 / num2))
fi

#display results
echo "sum = $sum"
echo "product = $product"
echo "difference = $difference"
echo "division = $quotient"