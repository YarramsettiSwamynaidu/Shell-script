#!bin/bash

ruser=$(id -u)

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    Exit 1
else
    echo "You are root user"
fi

yum install mysql -y