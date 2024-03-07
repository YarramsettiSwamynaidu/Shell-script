#!bin/bash

ruser=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() {

if [ $1 -ne 0 ]
then
    echo "$2 is failed"
    exit 1
else
    echo "$2 is sucess"
fi

}

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y &>> LOGFILE

VALIDATE $? "installed mysql"

yum install git -y &>> LOGFILE

VALIDATE $? "installed git"
