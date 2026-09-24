#!/bin/bash

# dir ni argument Check karva 
if [ $# -eq 0 ]; then
    DIR="."
else
    DIR="$1"
fi

# directory exists kare chhe ke nahi te check karva
if [ ! -d "$DIR" ]; then
    echo "Error: Directory '$DIR' does not exist."
    exit 1
fi

echo "ASCII values of files in: $DIR"
echo "--------------------------------"

# ascii Display karavva files naa deta ni
for file in "$DIR"/*; do

    if [ -f "$file" ]; then
        echo
        echo "File: $file"

        od -An -t u1 "$file"
    fi

done


