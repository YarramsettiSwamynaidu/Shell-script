#!bin/bash

ruser=$(id -u)

if [$ruser -ne 0]
then
    echo "plesae run command with root user"
else
    yum install mysql -y
fi