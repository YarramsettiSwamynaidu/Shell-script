#!bin/bash

Directory="/tmp/scrip-logs"

if [ ! -d $Directory ]
then
    echo -e "Soucce Diectory: $Diectory \e[31m dirctory not existed"
fi

FILES_TO_DELETE=$(find $Directory -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file:$line"
    rm -rf $line
done <<< $FILES_TO_DELETE
