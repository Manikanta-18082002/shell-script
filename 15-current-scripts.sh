# How do you call other scripts from your shell script
#(IMP Interview Q)

#2 Ways

#!/bin/bash
 COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"
 
 ./16-other-script.sh

echo "After calling other script, course: $COURSE"



















