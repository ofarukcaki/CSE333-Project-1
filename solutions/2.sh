#!/bin/bash

if [ "$1" != "" ]
then
    mkdir "$1/cprogs"
    mv *.c "$1/cprogs/"
    echo "A directory named cprogs is created under $1."
    echo "All the files whose name ends with .c in $1 are moved into cprogs directory."
else
    mkdir "cprogs"  # create a folder
    mv *.c "./cprogs/" # move all .c files to that folder
    echo "A directory named cprogs is created under current working directory."
    echo "All the files whose name ends with .c in the current working directory are moved into cprogs directory."
fi
