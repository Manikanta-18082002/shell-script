#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

# echo "All Packages: $@"

for i in $@
do
    echo "Package to install: $i"
done















