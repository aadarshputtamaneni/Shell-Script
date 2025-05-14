#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "exit status:$?" # Here 0=success,127=fail
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
echo "Process ID of last background command: $!"