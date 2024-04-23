#!/bin/bash

set -e # It is similar to VALIDATE Command

failure(){
    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} $BASH_COMMAND"' ERR 
# VALIDATE --> Human Manually check for error
# set -e --> Shell Script Manually check for Error
            #Used for crontab shedule
USERID=$(id -u) # Read output and store in a variable

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
    exit 1 #Manually exit if error comes
else
    echo "You are the ROOT USER"
fi

dnf install mysql -y

dnf install git -y


echo ".....Checking ..... Scripts......"

