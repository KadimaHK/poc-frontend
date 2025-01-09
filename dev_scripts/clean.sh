#!/bin/bash

cd "../lib/api"

# Check if .openapi-generator-ignore file exists
if [ ! -f ".openapi-generator-ignore" ]; then
    echo ".openapi-generator-ignore file not found. Exiting."
    exit 1
fi



# copy all files/folders from the current directory to a temporary directory in .openapi-generator-ignore
mkdir ../tmp

cp .openapi-generator-ignore ../tmp/.openapi-generator-ignore
while IFS= read -r line; do
    clean_line=$(echo $line | tr -d '\r')
    if [ -d "$clean_line" ]; then
        cp -r $clean_line "../tmp"
    else
        cp $clean_line "../tmp"
    fi
done < .openapi-generator-ignore
