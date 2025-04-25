#!/bin/bash

# Menu to display Options 
echo "Simple Calculator"
echo "Choose Operation"

echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"

read -p "Enter Choice (1/2/3/4): " choice
read -p "Enter first Number: " num1
read -p "Enter second Number: " num2

# Define operations
add() {
  local a=$1
  local b=$2
  echo "Result: $((a + b))"
}

subtract() {
  local a=$1
  local b=$2
  echo "Result: $((a - b))"
}

multiply() {
  local a=$1
  local b=$2
  echo "Result: $((a * b))"
}

divide() {
  local a=$1
  local b=$2
  if [ "$b" -eq 0 ]; then
    echo "Error: Division by zero"
  else
    echo "Result: $((a / b))"
  fi
}

# Perform operations based on user's choice
case $choice in
  1) add "$num1" "$num2" ;;
  2) subtract "$num1" "$num2" ;;
  3) multiply "$num1" "$num2" ;;
  4) divide "$num1" "$num2" ;;
  *) echo "Invalid choice" ;;
esac
