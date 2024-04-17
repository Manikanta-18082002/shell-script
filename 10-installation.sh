#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then
    echo "Installation is Failed :( "
    exit 1
fi

dnf install git -y

echo ".....Checking ..... Scripts......"











