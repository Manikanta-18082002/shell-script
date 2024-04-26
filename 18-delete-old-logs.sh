#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs  #Path


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ] #-d is a test operator that checks if the specified path exists and is a directory.
then
    echo -e $G "Source Directory Exists $N"
else
    echo -e $R "Please make sure that $SOURCE_DIRECTORY exits... $N"
    exit 1
fi

FILES=$( find $SOURCE_DIRECTORY -name "*.log" -mtime +14)
#(Find  current to previous 14 day's files)

#echo "Files to delete: $FILES"

# IFS -> Input Feild Seperator (NO leading & trailing whitespace)
while IFS= read -r line #By using line take seperate
do
    echo "Deleting file: $line"
    rm -rf $line
done <<<$FILES #Input to while (read)
# done: Marks the end of the loop.


#While Loop Explanation
#1st Line: read: reads input from the standard input  $FILES
#-r: prevents backslashes from being interpreted as escape characters.
#rm -r: recursively deletes directories, and does not prompt for confirmation (-f).




