#!bin/bash

NUMBER=$1

if [ NUMBER -ge 100 ] 
then
    echo "given number is $NUMBER greterthen 100"
else
    echo "given number is $NUMBER lessthen 100"
fi