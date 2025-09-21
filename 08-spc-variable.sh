#!/bin/bash

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "script name: $0"
echo "current directory:$pwd"
echo "who is running this: $USER"
echo "Home Directory of user: $Home'
echo :PID of this Script: $$"
sleep 50 & 
echo "PID of the last command in background is: $!"

