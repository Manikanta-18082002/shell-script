#!/bin/bash

# USERID=$(id -u) # Read output and store in a variable

# if [ $USERID -ne 0 ]
# then
#     echo "You must be a ROOT USER"
#     exit 1 #Manually exit if error comes
# else
#     echo "You are the ROOT USER"
# fi

# dnf install mysql -y

# if [ $? -ne 0 ]
# then
#     echo "Installation is Failed :( "
#     exit 1
# else
#     echo "Installation is Success.."
# fi

# dnf install git -y
# if [ $? -ne 0 ]
# then
#     echo "Installation is Failed :( "
#     exit 1
# else
#     echo "Installation is Success.."
# fi

# echo ".....Checking ..... Scripts......"



USERID=$(id -u)

if [ USERID -ne 0 ]
then
    echo "You must be a root user...."
else
    echo "You are a root User"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Success installed"
else
    echo "Installation failed"
fi

echo "Testing something"









