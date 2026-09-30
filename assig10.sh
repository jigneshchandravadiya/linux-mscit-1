#!/bin/bash

DIR="${1:-.}"

if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")

        if [[ "$filename" == *.* ]]; then
            extension="${filename##*.}"
            echo "$extension"
        else
            echo "no_extension"
        fi
    fi
done | sort | uniq -c
