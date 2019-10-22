#!/bin/bash

# let's say x = $1, y = $1
# Algorithm:
#  (x-y)/2 lines of x stars   +   y lines of spaced((x-y)/2 stars + y space + (x/y)/2 stars) stars    +   (x-y)/2 lines of x stars


if [ "$1" == "" ] || [ "$2" == "" ]
then
    echo "Two argument is required."
elif [ $1 -gt $2 ] && [ $(($(($1-$2))%2)) -eq 0 ]
then
    for(( i=1 ; i<= $1 ; i++ ))
    do 
        if [ $i -le $((($1-$2)/2)) ] || [ $i -gt $(($1-(($1-$2)/2))) ]
        then
            for a in `seq $1`; do echo -n \*; done   # print '*' $1 times     
            echo ""  # newline
        else
            for a in `seq $((($1-$2)/2))`; do echo -n \*; done  # (x-y)/2 stars
            for a in `seq $2`; do echo -n " "; done             # y space
            for a in `seq $((($1-$2)/2))`; do echo -n \*; done  # (x-y)/2 stars
            echo ""  # newline
        fi
    done
else
    echo "First argument must be greater than the second one and the difference between the two arguments must be an even number."
fi