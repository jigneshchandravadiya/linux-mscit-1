#!/bin/bash


echo "Enter directory name:"
read DIR


echo "Enter file name to search:"
read FILE

if [ ! -d "$DIR" ]; then
    echo "Error: Directory does not exist."
    exit 1
fi

find "$DIR" -type f -name "$FILE" -print
