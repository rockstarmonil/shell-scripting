#!/bin/bash
read -p "Enter Your Age: " age

if [ "$age" -ge 18 ]; then
  echo "You are eligible to vote"
else
  echo "You are not eligible for vote"
fi

