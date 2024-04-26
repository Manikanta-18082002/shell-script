#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs) # T: type
DISK_THRESHOLD=3
MESSAGE="" # Mentioned out? TO fetch Variables from While Loop

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 ) #To get current Usage Value...
    FOLDER=$(echo $line | awk -F " " '{print $NF}') # Fetching last Folder
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current Usage: $USAGE \n" # += ? Appending Files
    fi
done <<<$DISK_USAGE

echo "Message: $MESSAGE" 
# -e: used to enable interpretation of backslash escapes in the string being printed.
# Without the -e: echo will simply print the string as it is

echo "$MESSAGE" | mail -s "Disk Usage Alert" konugantimanikantareddy@gmail.com
# echo "body"   | mail -s "subject" to-address