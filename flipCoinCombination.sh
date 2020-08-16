#!/bin/bash -x

#display welcome message
echo "Welcome to Flip Coin Combination"

#dictionary
declare -A coinCombination

#variable
key=""

#Function for flipping the coin
function flipCoin()
{
	local flips=$1
	for(( i=1;i<=flips;i++ ))
	do
		if [ $((RANDOM%2)) -eq 0 ]; then
			key=H
		else
			key=T
		fi
		coinCombination[$key]=$((${coinCombination[$key]}+1))
	done
	calculateCombinationPercentage
}

#Calculating percentage of each combinations
function calculateCombinationPercentage()
{
	for keys in ${!coinCombination[@]}
	do
		coinCombination[$keys]=$((${coinCombination[$keys]}*100/$flips))
	done
}

read -p "How many times you want to flips the coin : " flips
flipCoin $flips
