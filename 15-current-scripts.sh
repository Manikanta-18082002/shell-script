# How do you call other scripts from your shell script
#(IMP Interview Q)

#2 Ways (./<script-Name>.sh  & source ./<script-Name>.sh)

#!/bin/bash
 COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"
 
 # ./16-other-scripts.sh
# Variable values will not change after calling other scripts
#PID of 2 scripts are different

source ./16-other-scripts.sh



echo "After calling other script, course: $COURSE"



















