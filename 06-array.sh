#!/bin/bash

CARS=("BMW", "AUDI", "Jaguar")

# Total 3 items in array
#Index starts from 0 , 1 , 2

echo "1st item is: ${CARS[0]}" 
echo "3rd Item is: ${CARS[2]}"
echo "All Items use @: ${CARS[@]}"