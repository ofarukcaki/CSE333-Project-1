#!/bin/bash

# regex: (bü[a-zA-Z]*ük)


txt_files=`find *.txt`;

# loop through .txt files in directory
while read -r line; do
    echo "...$line..."
done <<< "$txt_files"


# - Loop through directory to get .txt files
# - search the query on every txt file
#   - if available replace and print information