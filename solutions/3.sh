#!/bin/bash

# let's say x = $1, y = $1
# Algorithm:
#  (x-y)/2 lines of x stars   +   y lines of spaced((x-y)/2 stars + y space + (x/y)/2 stars) stars    +   (x-y)/2 lines of x stars


if [ "$1" == "" ] || [ "$2" == "" ]
then
    echo "Two argument is required."
elif [ $1 -gt $2 ]
then
    echo "ok"
else
    echo "First argument must be greater than second."
fi