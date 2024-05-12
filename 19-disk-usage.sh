#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs) # T: type
DISK_THRESHOLD=6
MESSAGE="" # Mentioned outside? To fetch Variables from While Loop

G="\e[32m"
N="\e[0m"

while IFS= read -r line # IFS -> Input Field Seperator (NO leading & trailing whitespace)
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1 ) #To get current Usage Value...
    FOLDER=$(echo $line | awk -F " " '{print $NF}') # Fetching last Folder
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current Usage: $USAGE \n" # += ? Appending Files
    fi
done <<<$DISK_USAGE

echo -e "$G Message$N: $MESSAGE" 
# -e: used to enable interpretation of backslash escapes in the string being printed.
# Without the -e: echo will simply print the string as it is (including \n in CL)

echo "$MESSAGE" | mail -s "Disk Usage Alert" konugantimanikantareddy@gmail.com
# echo "body"   | mail -s "subject" to-address


#Below is What ANSIBLE will DO (With out logging to Another server )

#1st Create 2 servers: (RHEL, CentOS from DevOps Practice)
#In RHEL ssh centos@ip(Centos) To connect, (Just Login to Centos and nothing to do (Every thing from RHEL Server)))
#
#ssh centos@44.223.2.204 -C "echo Hi, From RHEL-9 > /tmp/hi.txt" (Check in Centos cd/tmp/  (With out going to Centos
#Directly creating file and entered text))

# ssh centos@44.223.2.204 -C "curl https://raw.githubusercontent.com/daws-78s/expense-shell/main/mysql.sh | sudo bash"
#Running My sql from RHEL Server, wihout Logging to CentOS Server

#-C : Passing the Command


# [smtp.gmail.com]:587 konugantimanikantareddy@gmail.com:geptaruqiuqnqvwe


