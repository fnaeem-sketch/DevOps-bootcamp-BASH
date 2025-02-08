#!/bin/bash

# Level 6: Argument Parsing
# Mission: Write a script that accepts a filename as an argument 
# and prints the number of lines in that file. If no filename is provided, 
# display a message saying 'No file provided'.

if [ -z "$1" ] #-z "$1" checks if $1 is empty (i.e., no filename was provided).
then
    echo "no file provided"
    exit 1
fi

if [ ! -f "$1" ] #! -f "$1" → Checks if the file does NOT exist. -f "$1" means "is this a regular file?" ! negates the condition ("if NOT a file").
then
    echo "file not found"
    exit 1
fi

#variable for the line count 
LINE_COUNT=$(wc -l < "$1")

echo "There are $LINE_COUNT lines in $1"
# #wc -l < "$1" → Counts the number of lines in the file.
# wc -l gives the line count.
# < "$1" reads the file (avoiding extra output).