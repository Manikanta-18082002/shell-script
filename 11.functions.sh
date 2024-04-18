#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo  "$2 FAILURE"
        exit 4
    else
        echo "$2 SUCCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

dnf install mysql -y
VALIDATE $? "Installing MYSQL is...."

dnf install git -y
VALIDATE $? "Installing GIT is....."