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
 # Start checking from 2 to number-1
for (( i=2; i<$SOURCE; i++ ))
do
    # If number is divisible by i, it's not prime
    if (( SOURCE % i == 0 ));
    then
        echo "$SOURCE is not a prime number"
        exit 1
    fi
done