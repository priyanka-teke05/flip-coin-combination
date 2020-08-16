#!/bin/bash -x

#display welcome message
echo "Welcome to Flip Coin Combination"

if [ $((RANDOM%2)) -eq 0 ]; then
	echo "Head"
else
	echo "Tail"
fi
