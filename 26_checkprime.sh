#!/bin/bash

echo "enter your number"
read SOURCE

if [ $SOURCE -le 1 ]
then
    echo "your number is $SOURCE not prime"
    exit 1
else
    echo "your number is $SOURCE is prime"
fi
 