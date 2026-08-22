#!/bin/bash

mkdir -p backup_folder

cp hello.txt backup_folder/

echo "Backup completed on $(date)" >> backup_folder/hello.txt

echo "Backup successful!"

