#!/bin/bash

if [ "$1" != "" ]
then
    mkdir "$1/cprogs"
    echo "aset"
else
    mkdir "cprogs"  # create a folder
    mv *.c "./cprogs/" # move all .c files to that folder
    echo "not"
fi
