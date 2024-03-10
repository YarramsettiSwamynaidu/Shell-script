#!bin/bash

Diskthreshold=1
Disk_Usage=$(df -hT | grep -vE 'tmp|File')

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F'} | cut -d % -f1 )
    Partition=$(echo $line | awk '{print $1F'} | cut -d % -f1)
    if [ $usage -ge $Disk_Usage ]
    then
        Massage+="High Disk Usage on $Partition: $Usage\n"
    fi
done <<< $Disk_Usage

echo -e "Massage: $Massage"