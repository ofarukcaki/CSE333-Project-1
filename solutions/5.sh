#!/bin/bash

txt_files=""
path="./"

if [ "$2" != "" ]
then
    path=$2
fi

if [ "$1" == "-R" ]
then
    txt_files=`find $path -name "*.txt"`;
else
    txt_files=`find -maxdepth 1 -name "*.txt"`;
fi

# loop through .txt files in directory


for file in $txt_files
do
    size=`stat --printf="%s" $file`
    if [ $size -eq 0 ]
    then
        retry=1
        while [ $retry -eq 1 ]
        do
            echo "Do you want to delete $file (y/n)"
            read ans
            if [ $ans == "y" ] || [ $ans == "Y" ]
            then
                # sil
                rm $file 
                echo "$file has been deleted."
                retry=0
            elif [ $ans == "n" ] || [ $ans == "N" ]
            then 
                retry=0
                # nothing
            else
                echo "You should enter either y or n"
            fi
        done      
    fi
done
# while read -r file; do
#     size=`stat --printf="%s" $file`
#     if [ $size -eq 0 ]
#     then
#         echo "Do you want to delete $file"
#         read ans
#         echo "answer > $ans"
#         # read answer
#     fi
# done <<< "$txt_files"


# if path & name


# if path only

# if name only
