#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

dnf install mysql -y
