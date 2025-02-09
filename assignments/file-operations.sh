#!/bin/bash

# File Operations - Write a script that creates a directory, navigates
# into it, creates a file inside it, writes some text to the file, and then
# displays the contents of the file.

#Define variables
DIR_NAME="new-dir"
FILE_NAME="text.txt"

#navigate into directory
mkdir -p "$DIR_NAME" #-p → Prevents errors if the directory already exists (it won’t create duplicates).
cd "$DIR_NAME" || {echo "failed to enter directory"; exit 1; }

#create file in directory 
touch "$FILE_NAME"

#write some text into the file 
echo "some text in a file" > "$FILE_NAME"

#display contents of the file 
cat "$FILE_NAME"


