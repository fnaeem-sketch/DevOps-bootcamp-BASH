#!/bin/bash

# Level 3: Conditional Statements
# Mission: Write a script that checks if a file named hero.txt exists in the Arena directory. 
# If it does, print Hero found!; otherwise, print Hero missing!.

if [ -f arena/hero.txt ]
then   
    echo "file found"
else
    echo "file not found"
fi