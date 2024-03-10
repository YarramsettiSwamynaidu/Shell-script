#!bin/bash

Filename=/etc/passwd

if [ ! -f $Filename ]
then
    echo -e "Soucce Diectory: $Filename \e[31m dirctory not existed"
fi


while IFS= ":" read -r Username Password user_id group_id
do
    echo "Username:$Username"
    echo "Password:$Password"
    echo "User id:$user_id"
    echo "Group id:$group_id"
done < $Filename
