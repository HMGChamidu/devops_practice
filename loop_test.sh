#!/bin/bash

echo "Starting automated folder creation..."

SERVERS=("web_server" "db_server" "app_server")

for SERVER in "${SERVERS[@]}"
do 
echo "Creating directory for: $SERVER"
mkdir -p "$SERVER"
echo "Server $SERVER created on $(date)" > "$SERVER/status.txt"
done
echo "-------------------------------------"
echo "All server directories created successfully!"
ls -l 
