#!/bin/bash

# regex: (bü[a-zA-Z]*ük)

# grep -oh "\w*th\w*" *

# perl -lane 'print m/(\s\w*very\s)/g' himalayas.txt

txt_files=`find *.txt`
originalWildcard=$1
regex=`echo $1 | sed 's/*/\\\w*/g'`
# loop through .txt files in directory
while read -r line; do
    # perl -nle '@a = /\W*(\w*very)\w*/g; $,=","; print @a' test.txt # comma-seperated
    matched=`perl -nle "@a = /\W*($regex)\w*/g; $,=','; print @a" $line`
    echo "Found: $a"
    # matched=`perl -lane "@a = m/(\s$regex)\W{0,1}/g; $,=","; print @a" $line`

    # FIXME: loop through the comma-seperated "matched"
    for value in $matched # loop through all matched results
    do
        echo "The word \"$value\" inside $line is substituted with ${value^^}."
        value=" $value"
        # `sed -i "s/$value/${value^^}/g" $line`
    done
done <<< "$txt_files"


# - Loop through directory to get .txt files
# - search the query on every txt file
#   - if available replace and print information