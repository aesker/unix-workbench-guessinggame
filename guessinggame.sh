#!/usr/bin/env bash
# File: guessinggame.sh

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in your directory?"

function input_guess {					# Requirement 1: Function
	echo "Please input the number below:"
	read guess
	files=$(ls -1 | wc -l)
}	

input_guess

while [[ $guess -ne $files ]]				# Requirement 2: Loop
do
	if [[ $guess -lt $files ]]			# Requirement 3: If
	then
		echo "Higher!"
	else
		echo "Lower!"
	fi

	input_guess

done

echo "You have guessed correctly, congratulations!"
echo "The files in your directory are:" && ls -1
