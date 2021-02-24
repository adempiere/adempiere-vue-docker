#!/bin/sh

cd /usr/share/nginx/html/static/js
# Replace
find -name '*.js' -exec sed -i "s/localhost:8085/$API_HOST:$API_PORT/g" {} \;
# Start nginx
exec nginx;
