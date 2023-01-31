#!/bin/bash

IFS='.'
read -ra ADDR <<< "$1"

echo "        location /${ADDR[0]}/ {"
echo "            proxy_pass http://$2/html/;"
echo "        }"

IFS=' '
