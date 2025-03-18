#!/bin/bash

function guess_files {
    local file_count=$(ls -1 | wc -l)
    local guess=-1
    
    echo "Guess the number of files in the current directory:"
    
    while [[ $guess -ne $file_count ]]; do
        read -p "Enter your guess: " guess
        
        if [[ $guess -lt $file_count ]]; then
            echo "Too low! Try again."
        elif [[ $guess -gt $file_count ]]; then
            echo "Too high! Try again."
        fi
    done
    
    echo "Congratulations! You guessed it right."
}

guess_files
