#!/bin/bash

word=$1
reverse=""

for(( i=0 ; i<${#word} ; i++ ))     # loop through all chars
do 
    reverse="${word:i:1}$reverse"   # combine all characters in reverse order to produce reversed text
done

if [ "${word^^}" == "${reverse^^}" ] # compare original text's uppercase version with reversed text's uppercase v.
then
    echo "$word is a palindrome"
else
    echo "$word is not a palindrome"
fi