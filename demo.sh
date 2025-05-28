#!/bin/bash
ser="nginx"
SERVICE=$($ser | systemctl status nginx)
if [ -z $SERVICE != active ]
then 
    echo "not running,restarting"
    exit 1
else
    systemctl start nginx
    echo "it is running"
fi