#!/bin/bash


query=`sed 's/*/./g' <<< $1`
echo $query

# sed -i "s/$1/${1^^}/g" himalayas.txt
