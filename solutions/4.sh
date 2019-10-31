#!/bin/bash

# regex: (bü[a-zA-Z]*ük)

# grep -oh "\w*th\w*" *

# perl -lane 'print m/(\s\w*very\s)/g' himalayas.txt

txt_files=`find *.txt`
originalWildcard=$1
regex=`echo $1 | sed 's/*/\\\w*/g'`
# loop through .txt files in directory
while read -r line; do
    matched=`perl -lane "print m/(\s$regex\s)/g" $line`
    for value in $matched # loop through all matched results
    do
        
        echo "$value"
    done
done <<< "$txt_files"


# - Loop through directory to get .txt files
# - search the query on every txt file
#   - if available replace and print information