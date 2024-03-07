#!bin/bash

ruser=$(id -u)

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of mysql is failed"
    exit 1
else
    echo "innstallation of mysql is sucess"
fi
