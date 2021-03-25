#!/bin/sh

cd /usr/share/nginx/html/static/js
# Replace
find -name '*.js' -exec sed -i "s/https:\/\/api.erpya.com/$API_URL/g" {} \;
# Start nginx
exec nginx;
