#!/bin/bash

# Level 5: The Boss Battle - Combining Basics
# Mission: Combine what you've learned! Write a script that:
# 1. Creates a directory names 'Battlefield'
# 2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
# 3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
# 4. List the contents of both Battlefield and Archive.

mkdir -p battlefield
touch battlefield/knight.txt battlefield/sorcerer.txt battlefield/rogue.txt

if [ -f "battlefield/knight.txt" ]
then
    mkdir -p archive
    mv battlefield/knight.txt archive/
    echo "knight.txt has been moved to archive"
else
    "knight.txt not found"
fi

echo "contents of battlefield"
ls battlefield
echo "contents of archive"
ls archive
