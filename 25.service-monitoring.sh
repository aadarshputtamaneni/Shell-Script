#!/bin/bash
SERVICE_NAME="nginx"

if [ "$(systemctl is-active $SERVICE_NAME)" = "active" ]
then
    echo "$SERVICE_NAME is not active,restaring"
    exit 1
    systemctl restart $SERVICE_NAME 
else
    echo "$SERVICE_NAME is not active"
fi