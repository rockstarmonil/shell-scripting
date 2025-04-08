#!/bin/bash

echo "1. Show current directory"
echo "2. Show date"
echo "3. show users"
echo "4. Exit"

read -p "Choose an option: " choice

case $choice in

	1) pwd ;;
	2) date ;;
	3) who ;;
	4) exit ;;
	*) echo "Invalid Choice!" ;;
esac
