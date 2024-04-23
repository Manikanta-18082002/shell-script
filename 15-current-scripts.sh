# How do you call other scripts from your shell script
#(IMP Interview Q)

#2 Ways (./<script-Name>.sh  & source ./<script-Name>.sh)

#!/bin/bash
 COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"
 
 # ./16-other-scripts.sh
# Variable values NOT CHANGE after calling other scripts
#OR
# Changes happened in other scripts NOT Affect Current Script
#PID of 2 scripts are DIFFERENT (Changed)

source ./16-other-scripts.sh
# Variable values CHANGES after calling other scripts
#OR
# Changes happened in other scripts WILL Affect Current Script
#PID of 2 scripts are NOT Changed (Same)


echo "After calling other script, course: $COURSE"



















