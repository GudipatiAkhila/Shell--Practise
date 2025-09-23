#!/bin/bash



USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
    echo "ERROR:: please run this script with root privelege"
    exit 1 # failure other than 0 [ 0 means success]
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then 
        echo -e "ERROR:: installing $2..$R  failure $N"
        exit 1
    else
        echo -e "Installing $2...$G success $N"
    fi
}

dnf list installed mysql

if[ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo "MySQL already exsit..$G SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then 
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo "MySQL alredy exsit.. $G SKIPPING $N"
fi 
dnf install mysql -y
VALIDATE $? "MySQL"

dnf install nginx -y
VALIDATE $? "nginx"


dnf install Python3 -y
VALIDATE $? "Python3"
