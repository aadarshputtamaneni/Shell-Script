#!/bin/bash

service="nginx"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ systemctl $service -nq 0 ]
then
    echo -e "$R $service is down, restarting...$N"
    systemctl start $service
else
    echo -e "$G $service is running. $N"
fi