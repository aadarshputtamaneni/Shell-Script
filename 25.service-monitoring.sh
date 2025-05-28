#!/bin/bash
SERVICE_NAME="nginx"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ "$(systemctl is-active $SERVICE_NAME)" != "active" ]
then
    echo -e "$R $SERVICE_NAME Is Not Active $N ..$G Restaring $N"
    systemctl restart $SERVICE_NAME 
else
    echo -e "$G $SERVICE_NAME is Active $N"
fi