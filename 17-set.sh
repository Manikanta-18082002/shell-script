#!/bin/bash

set -e # It is similar to VALIDATE Command
USERID=$(id -u) # Read output and store in a variable

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

dnf install mysqlll -y

dnf install git -y


echo ".....Checking ..... Scripts......"

