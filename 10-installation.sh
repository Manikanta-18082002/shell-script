#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "You must be a ROOT USER"
else
    echo "You are the ROOT USER"
if


dnf install mysql -y