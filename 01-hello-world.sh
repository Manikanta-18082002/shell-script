#!/bin/bash

echo "Iam learning Devops with AWS"
echo
# Simple Conversation 02
echo "Mani:: Hello Suresh, How are you?"
echo "Jagan:: Hi Mani, I am fine. How are you?"
echo "Mani: I am fine too. how is your work?"
echo "Jagan:: not bad. I am thinking to upgrade to DevOps"
# Draw back repeated words
# Solution?  use variable
echo

#declaring of varible 03
PERSON1=Surya #no space between = and value
PERSON2=Mani

#referring variable
echo "$PERSON1:: Hello $PERSON2, How are you?"
echo "${PERSON2}:: Hi $PERSON1, I am fine. How are you?"
echo "$PERSON1:: I am fine too. how is your work?"
echo "$PERSON2:: not bad. I am thinking to upgrade to DevOps"

#declaring of varible 04
PERSON1=$1
PERSON2=$2

#referring variable
echo "$PERSON1:: Hello $PERSON2, How are you?"
echo "$PERSON2:: Hi $PERSON1, I am fine. How are you?"
echo "$PERSON1:: I am fine too. how is your work?"
echo "$PERSON2:: not bad. I am thinking to upgrade to DevOps"


# taking input from user 05
echo "Enter user Name"
read USERNAME

echo "Enter password"
read -s PASSWORD

echo "Username is: $USERNAME, and password is: $PASSWORD"

# Array's 06
MOVIES=("RRR" "DjTillu" "murari") # size of above array is 3.
# index are 0,    1,        2

# list always starts with 0.
echo "First Movie is: ${MOVIES[0]}"
echo "Second Movie is :${MOVIES[1]}"
echo "Third Movie is :${MOVIES[2]}"



































