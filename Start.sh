#!/bin/sh

cd /usr/share/nginx/html/static/js
# Replace
find -name '*.js' -exec sed -i "s/http:\/\/localhost:8085/$API_URL/g" {} \;
# Start nginx
exec nginx;
