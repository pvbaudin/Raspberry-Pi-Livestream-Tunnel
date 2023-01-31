#!/bin/bash

/scripts/generate-formatted-proxy-config.sh &&
sed '/# pass PHP scripts to FastCGI server/r /scripts/formatted-cams-list.txt' /scripts/default-template.conf > /etc/nginx/http.d/default.conf
nginx -s reload
