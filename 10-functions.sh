#!bin/bash

ruser=$(id -u)

VALIDATE() {

if [ $? -ne 0 ]
then
    echo "installation of Package is failed"
    exit 1
else
    echo "innstallation of Package is sucess"
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

VALIDATE

yum install git -y

VALIDATE

yum install nginx -y

VALIDATE