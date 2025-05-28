
#!/bin/bash
service="nginx"
if ! systemctl is-active --quiet $service; then #--quiet to check success/failure
 echo "$service is down, restarting..."
 systemctl start $service
else
 echo "$service is running."
fi