#!/bin/bash

    FILE="birthday.txt"
    TODAY=$(date +"%d-%m")

    echo "TODAY = [$TODAY]"

    while IFS=: read -r USERNAME LOGIN_NAME BIRTHDATE
    do
        # Remove extra spaces and carriage returns
        BIRTHDATE=$(echo "$BIRTHDATE" | tr -d '\r' | xargs)

        if [ "$BIRTHDATE" = "$TODAY" ]; then
            echo "USERNAME=[$USERNAME]"
            echo "LOGIN_NAME=[$LOGIN_NAME]"
            echo "BIRTHDATE=[$BIRTHDATE]"
            echo ">>> BIRTHDAY MATCHED <<<"
        fi

    done < "$FILE"
