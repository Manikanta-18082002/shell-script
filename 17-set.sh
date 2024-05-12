#!/bin/bash

set -e # It is similar to VALIDATE Command

failure(){
    echo "Failed at $1: $2"
}
trap 'failure ${LINENO} "$BASH_COMMAND"' ERR 
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

dnf install mysqll -y

dnf install git -y


echo ".....Checking ..... Scripts......"


# set: Sets Script parameters and options
# set [options] [arguments]

# Here are some of the commonly used options of the set command:

# -a: Marks variables that are created or modified or created for export
# -b: Notifies the termination of the job
# -e: Terminates the execution when an error occurs
# -f: Disable filename globbing
# -h: Prints help message
# -k: Disables the keyword function
# -n: Reads commands but does not execute them
# -o: Displays the current shell options
# -p: Prints the positional parameters
# -u: Treats unset variables as an error
# -v: Prints shell input lines
# -x: Prints commands and their arguments as they are executed
