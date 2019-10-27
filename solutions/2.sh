#!/bin/bash

if [ "$1" != "" ]
then
    mkdir -p "$1/cprogs" # -p prevents the warning if folder already exist
    mv *.c "$1/cprogs/" 2>/dev/null # 2>/dev/null is destroy sterr outputs instead of printing
    echo "A directory named cprogs is created under $1."
    echo "All the files whose name ends with .c in $1 are moved into cprogs directory (if there were any)."
else
    mkdir -p "cprogs"  # create a folder
    mv *.c "./cprogs/" 2>/dev/null # move all .c files to that folder
    echo "A directory named cprogs is created under current working directory."
    echo "All the files whose name ends with .c in the current working directory are moved into cprogs directory (if there were any)."
fi
