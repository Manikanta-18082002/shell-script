#!/bin/bash
#   #! (hash-bang)
# shebang ( the first line in any Linux shell script) is the location interpreter, commands written inside 
# shell script is interpreted and executed by this shebang

echo "Iam learning Devops with AWS"

# taking input from user 05
echo "Enter user Name"
read USERNAME
#OR --->  read -p "Enter Name: " USERNAME  (-p prompt to display text)

echo "Enter password"
read -s PASSWORD

echo "Username is: $USERNAME, and password is: $PASSWORD"
echo

# Array's 06
MOVIES=("RRR" "DjTillu" "murari") # size of above array is 3.
# index are 0,    1,        2

# list always starts with 0.
echo "First Movie is: ${MOVIES[0]}"
echo "Second Movie is :${MOVIES[1]}"
echo "Third Movie is :${MOVIES[2]}"
echo "Everything is :${MOVIES[@]}"

#07 Data types
num1=$1
num2=$2

SUM=$(($num1+$num2))

echo "Total of $num1 and $num2 is: $SUM"


#08 Special Variables (IMP)































