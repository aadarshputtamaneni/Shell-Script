#!/bin/bash
service="apache2"
if ! systemctl is-active --quiet $service; then
 echo "$service is down, restarting..."
 systemctl start $service
else
 echo "$service is running."
fi