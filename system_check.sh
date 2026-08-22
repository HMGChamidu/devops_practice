#!/bin/bash

SERVER_NAME="Local-Dev-Server"

echo "Connecting to $SERVER_NAME..."
echo "--------------------------------------"


read -p "Enter your name: " USER_NAME
echo "Hello $USER_NAME, checking system resources for you..."
echo "--------------------------------------"


DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage: $DISK_USAGE%"

if [ $DISK_USAGE -gt 80 ]; then
    echo "WARNING: Disk space is running low!"
else
    echo "STATUS: Disk space is healthy."
fi

echo "--------------------------------------"
