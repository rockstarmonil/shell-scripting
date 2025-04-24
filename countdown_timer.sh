#!/bin/bash

read -p "Enter Countdown Time in Seconds : " t

while((t>0));do
	echo "$t"
	sleep 1
	((t--))
done 

echo "Time is Up!"
