#!bin/bash

ruser=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE() {

if [ $1 -ne 0 ]
then
    echo -e "$2 is \e[31m failed"
    exit 1
else
    echo -e "$2 is \e[32m sucess"
fi

}

if [ $ruser -ne 0 ]
then
    echo "Plesae run command with root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installed mysql"

yum installl git -y &>> $LOGFILE

VALIDATE $? "installed git"
