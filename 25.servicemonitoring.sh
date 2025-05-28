#!/bin/bash
SERVICE_NAME="nginx"
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ "$SERVICE_NAME" != "active" ]
then
    echo -e "$R $SERVICE_NAME is not active $N"
    systemctl restart $SERVICE_NAME
else
    echo -e "$G $SERVICE_NAME is active $N"
fi