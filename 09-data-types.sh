#!/bin/bash


#everything in shell as consider as string
NUMBER1=100
NUMBER2=200
Name=Devops

sum=$(($NUMBER1+$NUMBER2))

echo "SUM is: ${sum}"

LEADERS={"AKHI","AKHILA"}
echo "All leaders: ${LEADERS}[@]"