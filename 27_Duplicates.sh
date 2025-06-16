#!/bin/bash

echo "Enter Your Numbers:"
read Input

Duplicates=$(echo "$Input" | sort | uniq -d)

if [ -z $Duplicates ]
then 
    echo "No Duplicates Found"
    exit 1
else 
    echo "Duplicates number are:$Duplicates"
fi