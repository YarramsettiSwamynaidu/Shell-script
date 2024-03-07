#!bin/bash

ruser=$(id -u)
Package=$1

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    exit 1
else
    echo "You are root user"
fi

yum install $Package -y

if [ $? -ne 0 ]
then
    echo "installation of $Package is failed"
    exit 1
else
    echo "innstallation of $Package is sucess"
fi
