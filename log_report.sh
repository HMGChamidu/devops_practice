#!/bin/bash

mkdir -p app_logs

echo "INFO: Server started successfully" > app_logs/server.log
echo "ERROR: Database connection failed" >>  app_logs/server.log
echo "INFO: Server restarted" >> app_logs/server.log

grep "ERROR" app_logs/server.log > app_logs/errors_only.txt

echo "Log analysis complete! Errors saved to errors_only.txt"

