#!/bin/bash

word=$1
reverse=""

for(( i=0 ; i<${#word} ; i++ ))
do 
    reverse="${word:i:1}$reverse"
done

if [ "${word^^}" == "${reverse^^}" ]
then
    echo "$word is a palindrome"
else
    echo "$word is not a palindrome"
fi