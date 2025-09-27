#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shell-script"

if [ $USERID -ne 0]; then 
    echo "ERROR:: please run this script with root privelege"
    exit 1 
fi

mkdir -p $LOGS_FOLDER
