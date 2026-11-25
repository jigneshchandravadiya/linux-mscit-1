#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
    echo "Error: '$DIR' is not a valid directory."
    exit 1
fi

find "$DIR" -type f \( -name "*.obj" -o -name "*.lst" -o -size 0 \) -print -delete

echo "Deletion completed."
