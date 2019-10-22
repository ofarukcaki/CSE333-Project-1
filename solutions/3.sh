#!/bin/bash

if [ "$1" == "" ] || [ "$2" == "" ]
then
    echo "Two argument is required."
elif [ $1 -gt $2 ]
then
    echo "ok"
else
    echo "First argument must be greater than second."
fi