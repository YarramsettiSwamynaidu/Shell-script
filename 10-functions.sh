#!bin/bash

ruser=$(id -u)

VALIDATE() {

if [ $1 -ne 0 ]
then
    echo "installation of $2 is failed"
    exit 1
else
    echo "innstallation of $2 is sucess"
fi

}

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

VALIDATE $? installed mysql

yum install git -y

VALIDATE $? installed git

yum install nginx -y

VALIDATE $? installed nginx