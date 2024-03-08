#!bin/bash

ruser=$(id -u)

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

for packagae in $@
do
    yum list installed $package

    if [ $? -ne 0 ]

        yum install $packaga
        VALIDATE $? installation of $package

    else
        echo -e "$package \e[33m already installed"
    fi
done