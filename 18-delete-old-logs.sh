#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-logs


R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e $G "Source Directory Exists $N"
else
    echo -e $R "Please make sure that $SOURCE_DIRECTORY exits... $N"
    exit 1
fi

FILEs=$( find $SOURCE_DIRECTORY -name "*.log" -mtime +14)
#(Find  current to previous 14 day's files)

echo "Files to delete: $FILES"








