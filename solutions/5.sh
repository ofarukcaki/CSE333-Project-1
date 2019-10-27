#!/bin/bash

txt_files=""
path="./"
recursive=0

# There are 4 possible cases
# $1 = -R
# $1 = -R and $2 = path
# $1 = path
# $1 = path and $2 = -R

if [ "$2" == "-R" ]
then
    # 4th case
    recursive=1
    path=$1
elif [ "$1" == "-R" ] && [ "$2" == "" ]
then
    # 1st case
    recursive=1
elif [ "$1" == "-R" ] && [ "$2" != "" ]
then
    # 2nd case
    recursive=1
    path=$2
elif [ "$2" == "" ] && [ "$1" != "-R" ]
then
    # 3rd case
    path=$1
else
    echo "There is problem with arguments."
fi


if [ "$recursive" == "1" ]  # if -R option is provided
then
    txt_files=`find $path -name "*.txt"`;   # get all .txt files including subfolders and store them in txt_files variable
else
    txt_files=`find -maxdepth 1 -name "*.txt"`; # get all .txt files in current dir and store them in txt_files variable
fi


# loop through .txt files in directory
for file in $txt_files
do
    size=`stat --printf="%s" $file` # get the size of the file
    if [ $size -eq 0 ]
    then
        retry=1
        while [ $retry -eq 1 ]  # loop until a valid option is selected
        do
            echo "Do you want to delete $file (y/n)"
            read ans
            if [ $ans == "y" ] || [ $ans == "Y" ]
            then
                # delete
                rm $file 
                echo "$file has been deleted."
                retry=0
            elif [ $ans == "n" ] || [ $ans == "N" ]
            then 
                retry=0
                # do nothing
            else
                echo "You should enter either y or n"
            fi
        done      
    fi
done